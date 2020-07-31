package cn.cqupt.Service;

import cn.cqupt.Moudle.Person;
import com.github.pagehelper.PageInfo;

import java.util.List;

public interface PersonService {
     List<Person> findAllPerson();
     List<Person> findAll(int pag,int size);
     Integer insert(Person person);
     Person selectOne(int pid);
     int delete(int pid);
     int update(Person person);


}
