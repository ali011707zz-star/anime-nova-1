.class public final Lcom/facebook/ads/redexgen/X/2y;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/q7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DrmConfiguration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/2x;
    }
.end annotation


# instance fields
.field public final A00:Landroid/net/Uri;

.field public final A01:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final A02:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final A03:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final A04:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final A05:Ljava/util/UUID;

.field public final A06:Ljava/util/UUID;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final A07:Z

.field public final A08:Z

.field public final A09:Z

.field public final A0A:[B


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/2x;)V
    .locals 2

    .line 9856
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9857
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/2x;->A06(Lcom/facebook/ads/redexgen/X/2x;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/2x;->A00(Lcom/facebook/ads/redexgen/X/2x;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 9858
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/2x;->A03(Lcom/facebook/ads/redexgen/X/2x;)Ljava/util/UUID;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2y;->A05:Ljava/util/UUID;

    .line 9859
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2y;->A05:Ljava/util/UUID;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2y;->A06:Ljava/util/UUID;

    .line 9860
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/2x;->A00(Lcom/facebook/ads/redexgen/X/2x;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2y;->A00:Landroid/net/Uri;

    .line 9861
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/2x;->A02(Lcom/facebook/ads/redexgen/X/2x;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2y;->A04:Ljava/util/Map;

    .line 9862
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/2x;->A02(Lcom/facebook/ads/redexgen/X/2x;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2y;->A03:Ljava/util/Map;

    .line 9863
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/2x;->A04(Lcom/facebook/ads/redexgen/X/2x;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2y;->A08:Z

    .line 9864
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/2x;->A06(Lcom/facebook/ads/redexgen/X/2x;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2y;->A07:Z

    .line 9865
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/2x;->A05(Lcom/facebook/ads/redexgen/X/2x;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2y;->A09:Z

    .line 9866
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/2x;->A01(Lcom/facebook/ads/redexgen/X/2x;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2y;->A02:Ljava/util/List;

    .line 9867
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/2x;->A01(Lcom/facebook/ads/redexgen/X/2x;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2y;->A01:Ljava/util/List;

    .line 9868
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/2x;->A07(Lcom/facebook/ads/redexgen/X/2x;)[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 9869
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/2x;->A07(Lcom/facebook/ads/redexgen/X/2x;)[B

    move-result-object v1

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/2x;->A07(Lcom/facebook/ads/redexgen/X/2x;)[B

    move-result-object v0

    array-length v0, v0

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 9870
    :goto_1
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2y;->A0A:[B

    .line 9871
    return-void

    .line 9872
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 9873
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/2x;Lcom/facebook/ads/redexgen/X/2r;)V
    .locals 0

    .line 9874
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/2y;-><init>(Lcom/facebook/ads/redexgen/X/2x;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 9875
    const/4 v2, 0x1

    if-ne p0, p1, :cond_0

    .line 9876
    return v2

    .line 9877
    :cond_0
    instance-of v1, p1, Lcom/facebook/ads/redexgen/X/2y;

    const/4 v0, 0x0

    if-nez v1, :cond_1

    .line 9878
    return v0

    .line 9879
    :cond_1
    check-cast p1, Lcom/facebook/ads/redexgen/X/2y;

    .line 9880
    .local v1, "other":Lcom/facebook/ads/redexgen/X/2y;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2y;->A05:Ljava/util/UUID;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/2y;->A05:Ljava/util/UUID;

    invoke-virtual {v1, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2y;->A00:Landroid/net/Uri;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/2y;->A00:Landroid/net/Uri;

    .line 9881
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A1E(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2y;->A03:Ljava/util/Map;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/2y;->A03:Ljava/util/Map;

    .line 9882
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A1E(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/2y;->A08:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/2y;->A08:Z

    if-ne v1, v0, :cond_2

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/2y;->A07:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/2y;->A07:Z

    if-ne v1, v0, :cond_2

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/2y;->A09:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/2y;->A09:Z

    if-ne v1, v0, :cond_2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2y;->A01:Ljava/util/List;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/2y;->A01:Ljava/util/List;

    .line 9883
    invoke-interface {v1, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2y;->A0A:[B

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/2y;->A0A:[B

    .line 9884
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9885
    :goto_0
    return v2

    .line 9886
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .line 9887
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2y;->A05:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    move-result v0

    .line 9888
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2y;->A00:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2y;->A00:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    .line 9889
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2y;->A03:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 9890
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2y;->A08:Z

    add-int/2addr v1, v0

    .line 9891
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2y;->A07:Z

    add-int/2addr v1, v0

    .line 9892
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2y;->A09:Z

    add-int/2addr v1, v0

    .line 9893
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2y;->A01:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 9894
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2y;->A0A:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    add-int/2addr v1, v0

    .line 9895
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1

    .line 9896
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
