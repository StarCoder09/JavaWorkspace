package com.control;
import com.to.Player;
import org.hibernate.SessionFactory;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;

public class HibernateMain {
	public static void main(String[] args) {
		Configuration configuration = new Configuration().configure();
		configuration.addAnnotatedClass(com.to.Player.class);
		StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder().applySettings(configuration.getProperties());
		SessionFactory factory= configuration.buildSessionFactory(builder.build());
		Session session=factory.openSession();
		Transaction transaction = session.beginTransaction();
		Player p1 = new Player(10, "Amit", "India", 30);
		Player p2 = new Player(20, "Rohit", "India", 35);
		session.save(p1);
		session.save(p2);
		transaction.commit();
		session.close();
		}
}
