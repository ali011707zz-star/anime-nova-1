.class public final Lcom/facebook/ads/redexgen/X/Dh;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/eu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/f9;
    }
.end annotation


# instance fields
.field public A00:Landroid/view/View;

.field public A01:Lcom/facebook/ads/redexgen/X/Ek;

.field public A02:Lcom/facebook/ads/redexgen/X/f9;

.field public A03:Z

.field public final A04:Landroid/os/Handler;

.field public final A05:Lcom/facebook/ads/redexgen/X/EA;

.field public final A06:Lcom/facebook/ads/redexgen/X/E4;

.field public final A07:Lcom/facebook/ads/redexgen/X/E2;

.field public final A08:Lcom/facebook/ads/redexgen/X/Dt;

.field public final A09:Z

.field public final A0A:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/facebook/ads/redexgen/X/f9;Z)V
    .locals 1

    .line 34243
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/Dh;-><init>(Landroid/view/View;Lcom/facebook/ads/redexgen/X/f9;ZZ)V

    .line 34244
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/facebook/ads/redexgen/X/f9;ZZ)V
    .locals 1

    .line 34245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34246
    new-instance v0, Lcom/facebook/ads/redexgen/X/3p;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/3p;-><init>(Lcom/facebook/ads/redexgen/X/Dh;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Dh;->A06:Lcom/facebook/ads/redexgen/X/E4;

    .line 34247
    new-instance v0, Lcom/facebook/ads/redexgen/X/3n;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/3n;-><init>(Lcom/facebook/ads/redexgen/X/Dh;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Dh;->A07:Lcom/facebook/ads/redexgen/X/E2;

    .line 34248
    new-instance v0, Lcom/facebook/ads/redexgen/X/3e;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/3e;-><init>(Lcom/facebook/ads/redexgen/X/Dh;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Dh;->A05:Lcom/facebook/ads/redexgen/X/EA;

    .line 34249
    new-instance v0, Lcom/facebook/ads/redexgen/X/3c;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/3c;-><init>(Lcom/facebook/ads/redexgen/X/Dh;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Dh;->A08:Lcom/facebook/ads/redexgen/X/Dt;

    .line 34250
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dh;->A03:Z

    .line 34251
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Dh;->A04:Landroid/os/Handler;

    .line 34252
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/Dh;->A09:Z

    .line 34253
    iput-boolean p4, p0, Lcom/facebook/ads/redexgen/X/Dh;->A0A:Z

    .line 34254
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Dh;->A08(Landroid/view/View;Lcom/facebook/ads/redexgen/X/f9;)V

    .line 34255
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Dh;)Landroid/os/Handler;
    .locals 0

    .line 34256
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Dh;->A04:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Dh;)Landroid/view/View;
    .locals 0

    .line 34257
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Dh;->A00:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Dh;)Lcom/facebook/ads/redexgen/X/Ek;
    .locals 0

    .line 34258
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Dh;->A01:Lcom/facebook/ads/redexgen/X/Ek;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Dh;)Lcom/facebook/ads/redexgen/X/f9;
    .locals 0

    .line 34259
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Dh;->A02:Lcom/facebook/ads/redexgen/X/f9;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/Dh;Lcom/facebook/ads/redexgen/X/f9;)Lcom/facebook/ads/redexgen/X/f9;
    .locals 0

    .line 34260
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Dh;->A02:Lcom/facebook/ads/redexgen/X/f9;

    return-object p1
.end method

.method private A05()V
    .locals 3

    .line 34261
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dh;->A00:Landroid/view/View;

    .line 34262
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 34263
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 34264
    const-wide/16 v0, 0x1f4

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/f8;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/f8;-><init>(Lcom/facebook/ads/redexgen/X/Dh;)V

    .line 34265
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 34266
    return-void
.end method

.method private A06(II)V
    .locals 2

    .line 34267
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dh;->A04:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 34268
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dh;->A00:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 34269
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dh;->A00:Landroid/view/View;

    int-to-float v0, p1

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 34270
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dh;->A00:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 34271
    return-void
.end method

.method private A07(Landroid/animation/AnimatorListenerAdapter;)V
    .locals 3

    .line 34272
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dh;->A00:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 34273
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dh;->A00:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v0, 0x1f4

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 34274
    return-void
.end method

.method private final A08(Landroid/view/View;Lcom/facebook/ads/redexgen/X/f9;)V
    .locals 2

    .line 34275
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Dh;->A02:Lcom/facebook/ads/redexgen/X/f9;

    .line 34276
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Dh;->A00:Landroid/view/View;

    .line 34277
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dh;->A00:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 34278
    sget-object v0, Lcom/facebook/ads/redexgen/X/f9;->A03:Lcom/facebook/ads/redexgen/X/f9;

    if-ne p2, v0, :cond_0

    .line 34279
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dh;->A00:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 34280
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dh;->A00:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 34281
    :goto_0
    return-void

    .line 34282
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dh;->A00:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 34283
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Dh;->A00:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/Dh;)V
    .locals 0

    .line 34284
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dh;->A05()V

    return-void
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/Dh;II)V
    .locals 0

    .line 34285
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Dh;->A06(II)V

    return-void
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/Dh;Landroid/animation/AnimatorListenerAdapter;)V
    .locals 0

    .line 34286
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Dh;->A07(Landroid/animation/AnimatorListenerAdapter;)V

    return-void
.end method

.method public static synthetic A0C(Lcom/facebook/ads/redexgen/X/Dh;)Z
    .locals 0

    .line 34287
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Dh;->A03:Z

    return p0
.end method

.method public static synthetic A0D(Lcom/facebook/ads/redexgen/X/Dh;)Z
    .locals 0

    .line 34288
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Dh;->A09:Z

    return p0
.end method

.method public static synthetic A0E(Lcom/facebook/ads/redexgen/X/Dh;)Z
    .locals 0

    .line 34289
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Dh;->A0A:Z

    return p0
.end method


# virtual methods
.method public final AAv(Lcom/facebook/ads/redexgen/X/Ek;)V
    .locals 4

    .line 34290
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Dh;->A01:Lcom/facebook/ads/redexgen/X/Ek;

    .line 34291
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Ek;->getEventBus()Lcom/facebook/ads/redexgen/X/UM;

    move-result-object v3

    const/4 v0, 0x4

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/UN;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dh;->A06:Lcom/facebook/ads/redexgen/X/E4;

    aput-object v0, v2, v1

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dh;->A07:Lcom/facebook/ads/redexgen/X/E2;

    aput-object v0, v2, v1

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dh;->A08:Lcom/facebook/ads/redexgen/X/Dt;

    aput-object v0, v2, v1

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dh;->A05:Lcom/facebook/ads/redexgen/X/EA;

    aput-object v0, v2, v1

    .line 34292
    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/UM;->A03([Lcom/facebook/ads/redexgen/X/UN;)V

    .line 34293
    return-void
.end method

.method public final AKV(Lcom/facebook/ads/redexgen/X/Ek;)V
    .locals 5

    .line 34294
    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v4, v1}, Lcom/facebook/ads/redexgen/X/Dh;->A06(II)V

    .line 34295
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Ek;->getEventBus()Lcom/facebook/ads/redexgen/X/UM;

    move-result-object v3

    const/4 v0, 0x4

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/UN;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dh;->A05:Lcom/facebook/ads/redexgen/X/EA;

    aput-object v0, v2, v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dh;->A08:Lcom/facebook/ads/redexgen/X/Dt;

    aput-object v0, v2, v4

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dh;->A07:Lcom/facebook/ads/redexgen/X/E2;

    aput-object v0, v2, v1

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dh;->A06:Lcom/facebook/ads/redexgen/X/E4;

    aput-object v0, v2, v1

    .line 34296
    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/UM;->A04([Lcom/facebook/ads/redexgen/X/UN;)V

    .line 34297
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Dh;->A01:Lcom/facebook/ads/redexgen/X/Ek;

    .line 34298
    return-void
.end method
