.class public final Lcom/facebook/ads/redexgen/X/YS;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Pp;
    }
.end annotation


# static fields
.field public static A02:Lcom/facebook/ads/redexgen/X/YS;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/Pp;

.field public final A01:Lcom/facebook/ads/redexgen/X/YU;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Ljava/util/concurrent/Executor;Lcom/facebook/ads/redexgen/X/Tw;)V
    .locals 1

    .line 74076
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74077
    new-instance v0, Lcom/facebook/ads/redexgen/X/YU;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/YU;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YS;->A01:Lcom/facebook/ads/redexgen/X/YU;

    .line 74078
    new-instance v0, Lcom/facebook/ads/redexgen/X/Pp;

    invoke-direct {v0, p2, p3, p1}, Lcom/facebook/ads/redexgen/X/Pp;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/ads/redexgen/X/Tw;Lcom/facebook/ads/redexgen/X/gi;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YS;->A00:Lcom/facebook/ads/redexgen/X/Pp;

    .line 74079
    return-void
.end method

.method private A00()V
    .locals 2

    .line 74080
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YS;->A01:Lcom/facebook/ads/redexgen/X/YU;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YS;->A00:Lcom/facebook/ads/redexgen/X/Pp;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/YU;->A03(Lcom/facebook/ads/redexgen/X/YT;)V

    .line 74081
    return-void
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/gi;Ljava/util/concurrent/Executor;Lcom/facebook/ads/redexgen/X/Tw;)V
    .locals 1

    .line 74082
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Up;->A1c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74083
    return-void

    .line 74084
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/YS;->A02:Lcom/facebook/ads/redexgen/X/YS;

    if-nez v0, :cond_1

    .line 74085
    new-instance v0, Lcom/facebook/ads/redexgen/X/YS;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/YS;-><init>(Lcom/facebook/ads/redexgen/X/gi;Ljava/util/concurrent/Executor;Lcom/facebook/ads/redexgen/X/Tw;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/YS;->A02:Lcom/facebook/ads/redexgen/X/YS;

    .line 74086
    sget-object v0, Lcom/facebook/ads/redexgen/X/YS;->A02:Lcom/facebook/ads/redexgen/X/YS;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/YS;->A00()V

    .line 74087
    :goto_0
    return-void

    .line 74088
    :cond_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/YS;->A02:Lcom/facebook/ads/redexgen/X/YS;

    invoke-direct {v0, p2}, Lcom/facebook/ads/redexgen/X/YS;->A02(Lcom/facebook/ads/redexgen/X/Tw;)V

    goto :goto_0
.end method

.method private A02(Lcom/facebook/ads/redexgen/X/Tw;)V
    .locals 1

    .line 74089
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YS;->A00:Lcom/facebook/ads/redexgen/X/Pp;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/Pp;->A08(Lcom/facebook/ads/redexgen/X/Pp;Lcom/facebook/ads/redexgen/X/Tw;)V

    .line 74090
    return-void
.end method
