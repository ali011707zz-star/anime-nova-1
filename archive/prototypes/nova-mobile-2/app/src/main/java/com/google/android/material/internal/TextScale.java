package com.google.android.material.internal;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import java.util.Map;
import x1.o;
import x1.u;

/* loaded from: classes.dex */
public class TextScale extends o {
    private static final String PROPNAME_SCALE = "android:textscale:scale";

    private void captureValues(u uVar) {
        View view = uVar.f15825b;
        if (view instanceof TextView) {
            uVar.f15824a.put(PROPNAME_SCALE, Float.valueOf(((TextView) view).getScaleX()));
        }
    }

    @Override // x1.o
    public void captureEndValues(u uVar) {
        captureValues(uVar);
    }

    @Override // x1.o
    public void captureStartValues(u uVar) {
        captureValues(uVar);
    }

    @Override // x1.o
    public Animator createAnimator(ViewGroup viewGroup, u uVar, u uVar2) {
        if (uVar == null || uVar2 == null || !(uVar.f15825b instanceof TextView)) {
            return null;
        }
        View view = uVar2.f15825b;
        if (!(view instanceof TextView)) {
            return null;
        }
        final TextView textView = (TextView) view;
        Map<String, Object> map = uVar.f15824a;
        Map<String, Object> map2 = uVar2.f15824a;
        float floatValue = map.get(PROPNAME_SCALE) != null ? ((Float) map.get(PROPNAME_SCALE)).floatValue() : 1.0f;
        float floatValue2 = map2.get(PROPNAME_SCALE) != null ? ((Float) map2.get(PROPNAME_SCALE)).floatValue() : 1.0f;
        if (floatValue == floatValue2) {
            return null;
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(floatValue, floatValue2);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.internal.TextScale.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                float floatValue3 = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                textView.setScaleX(floatValue3);
                textView.setScaleY(floatValue3);
            }
        });
        return ofFloat;
    }
}
