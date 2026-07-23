.class public final Lcom/facebook/ads/redexgen/X/PY;
.super Lcom/facebook/ads/redexgen/X/R7;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/1J;->getOnScrollListener()Lcom/facebook/ads/redexgen/X/R7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/1J;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1544
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "LeWmJ2AEMrGR8tgfwsG9m8UwM76zwmUz"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "6Bm"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ck2sw"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Oj1Ntvfg6dck0NxJmQASjzaKZXVqT4Sf"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "CtYf7ZmPdO"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "plI1JnuA"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "RZR4g54lk6KTwqItkRA6ECctcTUw"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "cGd5igXf7vOVCpmuGQi5cRxrBgQCM2pW"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/PY;->A01:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/1J;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 57885
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/PY;->A00:Lcom/facebook/ads/redexgen/X/1J;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/R7;-><init>()V

    return-void
.end method


# virtual methods
.method public final A0L(Lcom/facebook/ads/redexgen/X/7M;I)V
    .locals 5

    .line 57886
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/R7;->A0L(Lcom/facebook/ads/redexgen/X/7M;I)V

    .line 57887
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PY;->A00:Lcom/facebook/ads/redexgen/X/1J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1J;->getLayoutManager()Lcom/facebook/ads/redexgen/X/hr;

    move-result-object v0

    .line 57888
    .local v0, "linearLayoutManager":Lcom/facebook/ads/redexgen/X/hr;
    if-nez v0, :cond_0

    .line 57889
    return-void

    .line 57890
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hr;->A25()I

    move-result v3

    .line 57891
    .local v1, "scrollPosition":I
    if-ltz v3, :cond_1

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/PY;->A00:Lcom/facebook/ads/redexgen/X/1J;

    sget-object v1, Lcom/facebook/ads/redexgen/X/PY;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x30

    if-eq v1, v0, :cond_4

    .line 57892
    sget-object v2, Lcom/facebook/ads/redexgen/X/PY;->A01:[Ljava/lang/String;

    const-string v1, "JmqJ93Os7fwoNBdh"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/7M;->getAdapter()Lcom/facebook/ads/redexgen/X/Qq;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PY;->A00:Lcom/facebook/ads/redexgen/X/1J;

    .line 57893
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7M;->getAdapter()Lcom/facebook/ads/redexgen/X/Qq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qq;->A0B()I

    move-result v0

    if-lt v3, v0, :cond_2

    .line 57894
    .end local v2
    :cond_1
    return-void

    .line 57895
    :cond_2
    invoke-virtual {p1, v3}, Lcom/facebook/ads/redexgen/X/7M;->A1F(I)Lcom/facebook/ads/redexgen/X/RK;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Yo;

    .line 57896
    .local v2, "setAdToolBarClickListener":Lcom/facebook/ads/redexgen/X/Yo;
    if-nez v0, :cond_3

    .line 57897
    return-void

    .line 57898
    :cond_3
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Yo;->AJF()V

    .line 57899
    return-void

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
