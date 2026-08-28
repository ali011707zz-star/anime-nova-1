package com.bumptech.glide;

import com.bumptech.glide.k;

/* compiled from: TransitionOptions.java */
/* loaded from: classes.dex */
public abstract class k<CHILD extends k<CHILD, TranscodeType>, TranscodeType> implements Cloneable {

    /* renamed from: f, reason: collision with root package name */
    public j8.e<? super TranscodeType> f4590f = j8.c.c();

    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final CHILD clone() {
        try {
            return (CHILD) super.clone();
        } catch (CloneNotSupportedException e10) {
            throw new RuntimeException(e10);
        }
    }

    public final j8.e<? super TranscodeType> b() {
        return this.f4590f;
    }

    public final CHILD c() {
        return this;
    }

    public final CHILD d(j8.e<? super TranscodeType> eVar) {
        this.f4590f = (j8.e) l8.j.d(eVar);
        return c();
    }
}
