.class public final synthetic Lcoil/bitmap/RealBitmapReferenceCounter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcoil/bitmap/RealBitmapReferenceCounter;

.field public final synthetic f$1:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Lcoil/bitmap/RealBitmapReferenceCounter;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcoil/bitmap/RealBitmapReferenceCounter$$ExternalSyntheticLambda0;->f$0:Lcoil/bitmap/RealBitmapReferenceCounter;

    iput-object p2, p0, Lcoil/bitmap/RealBitmapReferenceCounter$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcoil/bitmap/RealBitmapReferenceCounter$$ExternalSyntheticLambda0;->f$0:Lcoil/bitmap/RealBitmapReferenceCounter;

    iget-object v1, p0, Lcoil/bitmap/RealBitmapReferenceCounter$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcoil/bitmap/RealBitmapReferenceCounter;->$r8$lambda$T-fjVoHwIQHdJBQpePCgCvWQb0Q(Lcoil/bitmap/RealBitmapReferenceCounter;Landroid/graphics/Bitmap;)V

    return-void
.end method
