.class public abstract Lcom/facebook/ads/redexgen/X/AQ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/pF;


# static fields
.field public static A04:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:Lcom/facebook/ads/redexgen/X/5i;

.field public final A02:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/5t;",
            ">;"
        }
    .end annotation
.end field

.field public final A03:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 624
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "fHQEiP1zlTMmcDhuRJvCUYhlqM3A1WdS"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "0xjR5o24wRXCnK6P48nvJnLVp1A7yIdC"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "SqWyKblZmsOi3mnFjBlOyIvINI4fuoz1"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "GUT90kd8g0iIA"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "yfLAFjbfQv"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "f1jCtkpjn8LmH02gI7EE0X95Og8KENXi"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "pIy67q2NMZ"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "VUF0F4IbO37j7MJUWX75PYUeN7L9nYYd"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/AQ;->A04:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .line 29124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29125
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/AQ;->A03:Z

    .line 29126
    const/4 v1, 0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AQ;->A02:Ljava/util/ArrayList;

    .line 29127
    return-void
.end method

.method private final A0D(Lcom/facebook/ads/redexgen/X/5i;Z)V
    .locals 3
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    .end annotation

    .line 29128
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/AQ;->A01:Lcom/facebook/ads/redexgen/X/5i;

    .line 29129
    const/4 v2, 0x0

    .local v0, "i":I
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/AQ;->A00:I

    if-ge v2, v0, :cond_0

    .line 29130
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AQ;->A02:Ljava/util/ArrayList;

    .line 29131
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/5t;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/AQ;->A03:Z

    .line 29132
    invoke-interface {v1, p0, p1, v0, p2}, Lcom/facebook/ads/redexgen/X/5t;->AGH(Lcom/facebook/ads/redexgen/X/pF;Lcom/facebook/ads/redexgen/X/5i;ZZ)V

    .line 29133
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 29134
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public final A0E()V
    .locals 4

    .line 29135
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AQ;->A01:Lcom/facebook/ads/redexgen/X/5i;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/5i;

    .line 29136
    .local v0, "dataSpec":Lcom/facebook/ads/redexgen/X/5i;
    const/4 v2, 0x0

    .local v1, "i":I
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/AQ;->A00:I

    if-ge v2, v0, :cond_0

    .line 29137
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AQ;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/5t;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/AQ;->A03:Z

    invoke-interface {v1, p0, v3, v0}, Lcom/facebook/ads/redexgen/X/5t;->AGG(Lcom/facebook/ads/redexgen/X/pF;Lcom/facebook/ads/redexgen/X/5i;Z)V

    .line 29138
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 29139
    .end local v1    # "i":I
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AQ;->A01:Lcom/facebook/ads/redexgen/X/5i;

    .line 29140
    return-void
.end method

.method public final A0F(I)V
    .locals 4

    .line 29141
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AQ;->A01:Lcom/facebook/ads/redexgen/X/5i;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/5i;

    .line 29142
    .local v0, "dataSpec":Lcom/facebook/ads/redexgen/X/5i;
    const/4 v2, 0x0

    .local v1, "i":I
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/AQ;->A00:I

    if-ge v2, v0, :cond_0

    .line 29143
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AQ;->A02:Ljava/util/ArrayList;

    .line 29144
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/5t;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/AQ;->A03:Z

    .line 29145
    invoke-interface {v1, p0, v3, v0, p1}, Lcom/facebook/ads/redexgen/X/5t;->ADK(Lcom/facebook/ads/redexgen/X/pF;Lcom/facebook/ads/redexgen/X/5i;ZI)V

    .line 29146
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 29147
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public final A0G(Lcom/facebook/ads/redexgen/X/5i;)V
    .locals 4

    .line 29148
    const/4 v3, 0x0

    .local v0, "i":I
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/AQ;->A00:I

    if-ge v3, v0, :cond_1

    .line 29149
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AQ;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    sget-object v1, Lcom/facebook/ads/redexgen/X/AQ;->A04:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x50

    if-eq v1, v0, :cond_0

    .line 29150
    sget-object v2, Lcom/facebook/ads/redexgen/X/AQ;->A04:[Ljava/lang/String;

    const-string v1, "KcnUkvSyZAFqCmq9nk7LLPyjKQRUe1pa"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 29151
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public final A0H(Lcom/facebook/ads/redexgen/X/5i;)V
    .locals 1

    .line 29152
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/AQ;->A0D(Lcom/facebook/ads/redexgen/X/5i;Z)V

    .line 29153
    return-void
.end method

.method public final A43(Lcom/facebook/ads/redexgen/X/5t;)V
    .locals 1

    .line 29154
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29155
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AQ;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 29156
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AQ;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29157
    iget v0, p0, Lcom/facebook/ads/redexgen/X/AQ;->A00:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/AQ;->A00:I

    .line 29158
    :cond_0
    return-void
.end method

.method public synthetic A8t()Ljava/util/Map;
    .locals 1

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/5X;->A00(Lcom/facebook/ads/redexgen/X/pF;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
