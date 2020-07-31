package cn.cqupt.Service.Lmpl;

import cn.cqupt.Dao.DaoMap;
import cn.cqupt.Moudle.Person;
import cn.cqupt.Service.PersonService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PersonServiceLmpl implements PersonService {
    @Autowired
    private DaoMap daoMap;

    @Override
    public List<Person> findAll(int page,int size)
    {
        PageHelper.startPage(page,size);
        return daoMap.findAll(page,size);
    }
    public Integer insert(Person person)
    {
        return daoMap.insert(person);
    }

    @Override
    public Person selectOne(int pid)
    {
        return daoMap.selectOne(pid);
    }

    @Override
    public int delete(int pid)
    {
        return daoMap.delete(pid);
    }

    @Override
    public int update(Person person)
    {
        return daoMap.update(person);
    }

    @Override
    public List<Person> findAllPerson(){
        return daoMap.findAllPerson();
    }
}
