.class public interface abstract Lcoil/bitmap/BitmapPoolStrategy;
.super Ljava/lang/Object;
.source "BitmapPoolStrategy.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/bitmap/BitmapPoolStrategy$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcoil/bitmap/BitmapPoolStrategy$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    sget-object v0, Lcoil/bitmap/BitmapPoolStrategy$Companion;->$$INSTANCE:Lcoil/bitmap/BitmapPoolStrategy$Companion;

    sput-object v0, Lcoil/bitmap/BitmapPoolStrategy;->Companion:Lcoil/bitmap/BitmapPoolStrategy$Companion;

    return-void
.end method


# virtual methods
.method public abstract get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
.end method

.method public abstract put(Landroid/graphics/Bitmap;)V
.end method

.method public abstract removeLast()Landroid/graphics/Bitmap;
.end method
