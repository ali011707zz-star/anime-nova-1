.class public final Lcoil/bitmap/EmptyBitmapReferenceCounter;
.super Ljava/lang/Object;
.source "BitmapReferenceCounter.kt"

# interfaces
.implements Lcoil/bitmap/BitmapReferenceCounter;


# static fields
.field public static final INSTANCE:Lcoil/bitmap/EmptyBitmapReferenceCounter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcoil/bitmap/EmptyBitmapReferenceCounter;

    invoke-direct {v0}, Lcoil/bitmap/EmptyBitmapReferenceCounter;-><init>()V

    sput-object v0, Lcoil/bitmap/EmptyBitmapReferenceCounter;->INSTANCE:Lcoil/bitmap/EmptyBitmapReferenceCounter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decrement(Landroid/graphics/Bitmap;)Z
    .locals 1

    .line 0
    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public increment(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 0
    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public setValid(Landroid/graphics/Bitmap;Z)V
    .locals 0

    .line 0
    const-string p2, "bitmap"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
