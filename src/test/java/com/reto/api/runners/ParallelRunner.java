package com.reto.api.runners;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class ParallelRunner {

    @Test
    void testParallel() {

        Results results = Runner.path("classpath:features")
                .parallel(4);

        assertEquals(0, results.getFailCount(), results.getErrorMessages());

    }
}