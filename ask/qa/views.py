#from django.shortcuts import render
from django.http import HttpResponse 
def test(request, *args, **kwargs):
    return HttpResponse('Not found')


# Create your views here.
