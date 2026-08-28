package com.bumptech.glide;

import android.content.Context;
import com.anslayer.data.glide.GlideAppModule;
import java.util.Collections;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class GeneratedAppGlideModuleImpl extends GeneratedAppGlideModule {

    /* renamed from: a, reason: collision with root package name */
    public final GlideAppModule f4503a = new GlideAppModule();

    public GeneratedAppGlideModuleImpl(Context context) {
    }

    @Override // f8.a, f8.b
    public void a(Context context, d dVar) {
        this.f4503a.a(context, dVar);
    }

    @Override // f8.d, f8.f
    public void b(Context context, c cVar, Registry registry) {
        this.f4503a.b(context, cVar, registry);
    }

    @Override // f8.a
    public boolean c() {
        return this.f4503a.c();
    }

    @Override // com.bumptech.glide.GeneratedAppGlideModule
    public Set<Class<?>> d() {
        return Collections.emptySet();
    }

    @Override // com.bumptech.glide.GeneratedAppGlideModule
    /* renamed from: f, reason: merged with bridge method [inline-methods] */
    public a e() {
        return new a();
    }
}
