package com.anslayer.widget;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.anslayer.R;
import d4.a;
import j4.l0;
import jc.l;
import k7.b;
import r7.j;

/* compiled from: ErrorView.kt */
/* loaded from: classes.dex */
public final class ErrorView extends LinearLayout {

    /* renamed from: f, reason: collision with root package name */
    public final l0 f4384f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ErrorView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        l.f(context, "context");
        l0 b10 = l0.b(LayoutInflater.from(context), this, true);
        l.e(b10, "inflate(LayoutInflater.from(context), this, true)");
        this.f4384f = b10;
    }

    public final void a(String str) {
        l.f(str, "message");
        l0 l0Var = this.f4384f;
        if (Build.VERSION.SDK_INT >= 23) {
            ImageView imageView = l0Var.f8512c;
            l.e(imageView, "errorMessageIcon");
            imageView.setVisibility(0);
            ImageView imageView2 = l0Var.f8512c;
            l.e(imageView2, "errorMessageIcon");
            ViewGroup.LayoutParams layoutParams = imageView2.getLayoutParams();
            if (layoutParams != null) {
                layoutParams.height = b.g(100);
                layoutParams.width = b.g(100);
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                marginLayoutParams.setMargins(marginLayoutParams.leftMargin, marginLayoutParams.topMargin, b.g(5), marginLayoutParams.bottomMargin);
                imageView2.setLayoutParams(layoutParams);
                a.a(getContext()).F(Integer.valueOf(R.drawable.tenor)).g(j.f12975d).T(android.R.color.transparent).u0(l0Var.f8512c);
            } else {
                throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
            }
        } else {
            ImageView imageView3 = l0Var.f8512c;
            l.e(imageView3, "errorMessageIcon");
            imageView3.setVisibility(8);
        }
        TextView textView = l0Var.f8514e;
        l.e(textView, "errorText");
        textView.setVisibility(8);
        l0Var.f8513d.setText(str);
        Button button = l0Var.f8511b;
        l.e(button, "btnTryAgain");
        button.setVisibility(8);
    }

    public final void b() {
        l0 l0Var = this.f4384f;
        if (Build.VERSION.SDK_INT >= 23) {
            ImageView imageView = l0Var.f8512c;
            l.e(imageView, "errorMessageIcon");
            ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
            if (layoutParams != null) {
                layoutParams.height = -2;
                layoutParams.width = -2;
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                marginLayoutParams.setMargins(marginLayoutParams.leftMargin, marginLayoutParams.topMargin, 0, marginLayoutParams.bottomMargin);
                imageView.setLayoutParams(layoutParams);
            } else {
                throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
            }
        }
        l0Var.f8512c.setImageResource(R.drawable.ic_signal_wifi_off_black_24dp);
        l0Var.f8514e.setText(getResources().getString(R.string.error_connection_error));
        l0Var.f8513d.setText(getResources().getString(R.string.error_try_again));
        ImageView imageView2 = l0Var.f8512c;
        l.e(imageView2, "errorMessageIcon");
        imageView2.setVisibility(0);
        TextView textView = l0Var.f8514e;
        l.e(textView, "errorText");
        textView.setVisibility(0);
        Button button = l0Var.f8511b;
        l.e(button, "btnTryAgain");
        button.setVisibility(0);
    }

    public final void c() {
        l0 l0Var = this.f4384f;
        if (Build.VERSION.SDK_INT >= 23) {
            ImageView imageView = l0Var.f8512c;
            l.e(imageView, "errorMessageIcon");
            ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
            if (layoutParams != null) {
                layoutParams.height = -2;
                layoutParams.width = -2;
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                marginLayoutParams.setMargins(marginLayoutParams.leftMargin, marginLayoutParams.topMargin, 0, marginLayoutParams.bottomMargin);
                imageView.setLayoutParams(layoutParams);
            } else {
                throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
            }
        }
        l0Var.f8512c.setImageResource(R.drawable.ic_baseline_error_24);
        l0Var.f8514e.setText("حدث خطأ");
        l0Var.f8513d.setText("يرجى اعادة المحاولة في وقت لاحق");
        ImageView imageView2 = l0Var.f8512c;
        l.e(imageView2, "errorMessageIcon");
        imageView2.setVisibility(0);
        TextView textView = l0Var.f8514e;
        l.e(textView, "errorText");
        textView.setVisibility(0);
        Button button = l0Var.f8511b;
        l.e(button, "btnTryAgain");
        button.setVisibility(0);
    }

    public final l0 getBinding() {
        return this.f4384f;
    }
}
