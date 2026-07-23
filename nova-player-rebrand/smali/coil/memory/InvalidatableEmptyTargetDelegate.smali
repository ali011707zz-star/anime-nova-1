.class public final Lcoil/memory/InvalidatableEmptyTargetDelegate;
.super Lcoil/memory/TargetDelegate;
.source "TargetDelegate.kt"


# instance fields
.field private final referenceCounter:Lcoil/bitmap/BitmapReferenceCounter;


# direct methods
.method public constructor <init>(Lcoil/bitmap/BitmapReferenceCounter;)V
    .locals 1

    const-string v0, "referenceCounter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, v0}, Lcoil/memory/TargetDelegate;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 62
    iput-object p1, p0, Lcoil/memory/InvalidatableEmptyTargetDelegate;->referenceCounter:Lcoil/bitmap/BitmapReferenceCounter;

    return-void
.end method


# virtual methods
.method public success(Lcoil/request/SuccessResult;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    .line 66
    iget-object p2, p0, Lcoil/memory/InvalidatableEmptyTargetDelegate;->referenceCounter:Lcoil/bitmap/BitmapReferenceCounter;

    .line 146
    invoke-virtual {p1}, Lcoil/request/ImageResult;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_2

    const/4 p1, 0x0

    .line 199
    invoke-interface {p2, v1, p1}, Lcoil/bitmap/BitmapReferenceCounter;->setValid(Landroid/graphics/Bitmap;Z)V

    .line 67
    :cond_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
