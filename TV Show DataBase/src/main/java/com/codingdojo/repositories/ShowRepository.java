package com.codingdojo.repositories;

import java.util.ArrayList;

import org.springframework.data.repository.CrudRepository;



import com.codingdojo.models.TvShow;

public interface ShowRepository extends CrudRepository<TvShow,Long>
{

};