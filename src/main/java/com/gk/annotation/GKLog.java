package com.gk.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target(ElementType.METHOD) // @GKLog can only be used on methods.
@Retention(RetentionPolicy.RUNTIME) // Spring/Java can detect this annotation while the application is running.
public @interface GKLog {// This creates your own annotation.

}