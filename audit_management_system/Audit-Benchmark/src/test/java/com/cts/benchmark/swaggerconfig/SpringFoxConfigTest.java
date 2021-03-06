package com.cts.benchmark.swaggerconfig;

import static org.junit.jupiter.api.Assertions.assertNotNull;

import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.core.env.Environment;
import org.springframework.test.context.ContextConfiguration;


@ContextConfiguration
@SpringBootTest
public class SpringFoxConfigTest {
	
	@Mock
	Environment env;
	
	@InjectMocks
	SpringFoxConfig config;
	
	@Test
	public void contextLoads() {
		assertNotNull(config);
	}
	

	@Test
	public void testDocket() {
		assertNotNull(config.api());
	}


}
