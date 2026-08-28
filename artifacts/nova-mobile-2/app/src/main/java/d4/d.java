package d4;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import com.bumptech.glide.j;
import e8.h;
import e8.m;
import java.io.File;

/* compiled from: GlideRequests.java */
/* loaded from: classes.dex */
public class d extends j {
    public d(com.bumptech.glide.c cVar, h hVar, m mVar, Context context) {
        super(cVar, hVar, mVar, context);
    }

    @Override // com.bumptech.glide.j
    /* renamed from: B, reason: merged with bridge method [inline-methods] */
    public <ResourceType> c<ResourceType> a(Class<ResourceType> cls) {
        return new c<>(this.f4575f, this, cls, this.f4576g);
    }

    @Override // com.bumptech.glide.j
    /* renamed from: C, reason: merged with bridge method [inline-methods] */
    public c<Bitmap> d() {
        return (c) super.d();
    }

    @Override // com.bumptech.glide.j
    /* renamed from: D, reason: merged with bridge method [inline-methods] */
    public c<Drawable> g() {
        return (c) super.g();
    }

    public c<File> E() {
        return (c) super.l();
    }

    public c<Drawable> F(Integer num) {
        return (c) super.r(num);
    }

    @Override // com.bumptech.glide.j
    /* renamed from: G, reason: merged with bridge method [inline-methods] */
    public c<Drawable> s(String str) {
        return (c) super.s(str);
    }

    @Override // com.bumptech.glide.j
    public void x(h8.h hVar) {
        if (hVar instanceof b) {
            super.x(hVar);
        } else {
            super.x(new b().a(hVar));
        }
    }
}
