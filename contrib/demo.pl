#!/usr/bin/env perl

use Dancer2;
use Dancer2::Plugin::ProbabilityRoute;

probability_route 33, 'get', '/' => sub {
    "One chance on 3 ! Well done"
};

probability_route 67, 'get', '/' => sub {
    "Like two thirds of the world... Boring.";
};

get '/showme' => sub {
    "Your score is : ".probability_user_score;
};

declare_probability_routes;
start;
