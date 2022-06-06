package com.codingdojo.services;

import java.util.ArrayList;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



import com.codingdojo.models.TvShow;
import com.codingdojo.repositories.ShowRepository;

@Service
public class ShowService
{
	@Autowired
	private ShowRepository showRepository;

	public ShowService(ShowRepository showRepository)
	{
		this.showRepository=showRepository;
	}
	
	// C	
	public void Create(TvShow show)
	{
		showRepository.save(show);
	}
	
	// R
	public TvShow ReadOne(Long id)
	{
		Optional<TvShow> show=showRepository.findById(id);		
		return show.isPresent()?show.get():null;
	}
	
	// R
	public ArrayList<TvShow> ReadAll()
	{
		ArrayList<TvShow> shows=(ArrayList<TvShow>)showRepository.findAll();
		return shows;
	}
	
	//	U.
	public void Update(TvShow show)
	{
		Create(show);
	}
	
	// D.	
	public void Delete(Long id)
	{
		showRepository.deleteById(id);
	}
};