#from django.shortcuts import render
from django.http import HttpResponse 
def test(request, *args, **kwargs):
    return HttpResponseNotFound('404')


# Create your views here.
