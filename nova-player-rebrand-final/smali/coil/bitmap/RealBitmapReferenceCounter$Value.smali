.class public final Lcoil/bitmap/RealBitmapReferenceCounter$Value;
.super Ljava/lang/Object;
.source "BitmapReferenceCounter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil/bitmap/RealBitmapReferenceCounter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Value"
.end annotation


# instance fields
.field private final bitmap:Ljava/lang/ref/WeakReference;

.field private count:I

.field private isValid:Z


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;IZ)V
    .locals 1

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object p1, p0, Lcoil/bitmap/RealBitmapReferenceCounter$Value;->bitmap:Ljava/lang/ref/WeakReference;

    .line 149
    iput p2, p0, Lcoil/bitmap/RealBitmapReferenceCounter$Value;->count:I

    .line 150
    iput-boolean p3, p0, Lcoil/bitmap/RealBitmapReferenceCounter$Value;->isValid:Z

    return-void
.end method


# virtual methods
.method public final getBitmap()Ljava/lang/ref/WeakReference;
    .locals 1

    .line 148
    iget-object v0, p0, Lcoil/bitmap/RealBitmapReferenceCounter$Value;->bitmap:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public final getCount()I
    .locals 1

    .line 149
    iget v0, p0, Lcoil/bitmap/RealBitmapReferenceCounter$Value;->count:I

    return v0
.end method

.method public final isValid()Z
    .locals 1

    .line 150
    iget-boolean v0, p0, Lcoil/bitmap/RealBitmapReferenceCounter$Value;->isValid:Z

    return v0
.end method

.method public final setCount(I)V
    .locals 0

    .line 149
    iput p1, p0, Lcoil/bitmap/RealBitmapReferenceCounter$Value;->count:I

    return-void
.end method

.method public final setValid(Z)V
    .locals 0

    .line 150
    iput-boolean p1, p0, Lcoil/bitmap/RealBitmapReferenceCounter$Value;->isValid:Z

    return-void
.end method
