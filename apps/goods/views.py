from django.views import View
from django.shortcuts import redirect, render
from django.urls import reverse
from django.http import HttpResponse
from django.contrib.auth import logout


# Create your views here.
class IndexView(View):
    def get(self, request):
        if not request.user.is_authenticated:
            next_url = reverse(
                'user:login') + '?next=' + request.get_full_path()
            return redirect(next_url)
        else:
            return render(request, 'index.html')
