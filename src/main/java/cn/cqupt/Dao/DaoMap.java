package cn.cqupt.Dao;

import cn.cqupt.Moudle.Person;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface DaoMap {

    List<Person> findAllPerson();

    List<Person> findAll(int pag,int size);

    Integer insert(Person person);

    Person selectOne(int pid);

    int delete(int pid);

    int update(Person person);

}
