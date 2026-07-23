.class public final Lcom/facebook/ads/redexgen/X/Ok;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final serialVersionUID:J = -0x2c891ddc6efb75c6L


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Ok;

.field public final A01:I

.field public final A02:Ljava/lang/String;

.field public final A03:Ljava/lang/String;

.field public final A04:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Ok;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 56125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ok;->A04:Ljava/util/List;

    .line 56127
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Ok;->A01:I

    .line 56128
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Ok;->A03:Ljava/lang/String;

    .line 56129
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Ok;->A02:Ljava/lang/String;

    .line 56130
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 56131
    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0, p1}, Lcom/facebook/ads/redexgen/X/Ok;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 56132
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/Ok;)V
    .locals 0

    .line 56133
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ok;->A00:Lcom/facebook/ads/redexgen/X/Ok;

    .line 56134
    return-void
.end method


# virtual methods
.method public final A01()I
    .locals 1

    .line 56135
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ok;->A01:I

    return v0
.end method

.method public final A02()Lcom/facebook/ads/redexgen/X/Ok;
    .locals 1

    .line 56136
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ok;->A00:Lcom/facebook/ads/redexgen/X/Ok;

    return-object v0
.end method

.method public final A03()Ljava/lang/String;
    .locals 1

    .line 56137
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ok;->A02:Ljava/lang/String;

    return-object v0
.end method

.method public final A04()Ljava/lang/String;
    .locals 1

    .line 56138
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ok;->A03:Ljava/lang/String;

    return-object v0
.end method

.method public final A05()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Ok;",
            ">;"
        }
    .end annotation

    .line 56139
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ok;->A04:Ljava/util/List;

    return-object v0
.end method

.method public final A06(Lcom/facebook/ads/redexgen/X/Ok;)V
    .locals 1

    .line 56140
    invoke-direct {p1, p0}, Lcom/facebook/ads/redexgen/X/Ok;->A00(Lcom/facebook/ads/redexgen/X/Ok;)V

    .line 56141
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ok;->A04:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56142
    return-void
.end method
