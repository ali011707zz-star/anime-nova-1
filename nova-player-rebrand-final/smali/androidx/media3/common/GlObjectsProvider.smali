.class public interface abstract Landroidx/media3/common/GlObjectsProvider;
.super Ljava/lang/Object;
.source "GlObjectsProvider.java"


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation


# virtual methods
.method public abstract createBuffersForTexture(III)Landroidx/media3/common/GlTextureInfo;
.end method

.method public abstract createEglContext(Landroid/opengl/EGLDisplay;I[I)Landroid/opengl/EGLContext;
.end method

.method public abstract createEglSurface(Landroid/opengl/EGLDisplay;Ljava/lang/Object;IZ)Landroid/opengl/EGLSurface;
.end method

.method public abstract createFocusedPlaceholderEglSurface(Landroid/opengl/EGLContext;Landroid/opengl/EGLDisplay;)Landroid/opengl/EGLSurface;
.end method

.method public abstract release(Landroid/opengl/EGLDisplay;)V
.end method
