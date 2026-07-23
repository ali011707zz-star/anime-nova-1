.class public abstract Lcom/facebook/ads/redexgen/X/qC;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/24;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/q7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClippingConfiguration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/2v;,
        Lcom/facebook/ads/androidx/media3/common/MediaItem$ClippingConfiguration$FieldNumber;
    }
.end annotation


# static fields
.field public static final A05:Lcom/facebook/ads/redexgen/X/23;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/23<",
            "Lcom/facebook/ads/redexgen/X/AW;",
            ">;"
        }
    .end annotation
.end field

.field public static final A06:Lcom/facebook/ads/redexgen/X/qC;


# instance fields
.field public final A00:J

.field public final A01:J

.field public final A02:Z

.field public final A03:Z

.field public final A04:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 3476
    new-instance v0, Lcom/facebook/ads/redexgen/X/2v;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/2v;-><init>()V

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2v;->A0A()Lcom/facebook/ads/redexgen/X/AW;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/qC;->A06:Lcom/facebook/ads/redexgen/X/qC;

    .line 3477
    new-instance v0, Lcom/facebook/ads/redexgen/X/qD;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/qD;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/qC;->A05:Lcom/facebook/ads/redexgen/X/23;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/2v;)V
    .locals 2

    .line 105250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105251
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/2v;->A00(Lcom/facebook/ads/redexgen/X/2v;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/qC;->A01:J

    .line 105252
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/2v;->A01(Lcom/facebook/ads/redexgen/X/2v;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/qC;->A00:J

    .line 105253
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/2v;->A02(Lcom/facebook/ads/redexgen/X/2v;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/qC;->A03:Z

    .line 105254
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/2v;->A03(Lcom/facebook/ads/redexgen/X/2v;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/qC;->A02:Z

    .line 105255
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/2v;->A04(Lcom/facebook/ads/redexgen/X/2v;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/qC;->A04:Z

    .line 105256
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/2v;Lcom/facebook/ads/redexgen/X/2r;)V
    .locals 0

    .line 105257
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/qC;-><init>(Lcom/facebook/ads/redexgen/X/2v;)V

    return-void
.end method

.method public static synthetic A00(Landroid/os/Bundle;)Lcom/facebook/ads/redexgen/X/AW;
    .locals 5

    .line 105258
    new-instance v4, Lcom/facebook/ads/redexgen/X/2v;

    invoke-direct {v4}, Lcom/facebook/ads/redexgen/X/2v;-><init>()V

    .line 105259
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/qC;->A01(I)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v3, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 105260
    invoke-virtual {v4, v0, v1}, Lcom/facebook/ads/redexgen/X/2v;->A06(J)Lcom/facebook/ads/redexgen/X/2v;

    move-result-object v4

    .line 105261
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/qC;->A01(I)Ljava/lang/String;

    move-result-object v3

    .line 105262
    const-wide/high16 v0, -0x8000000000000000L

    invoke-virtual {p0, v3, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 105263
    invoke-virtual {v4, v0, v1}, Lcom/facebook/ads/redexgen/X/2v;->A05(J)Lcom/facebook/ads/redexgen/X/2v;

    move-result-object v1

    .line 105264
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/qC;->A01(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 105265
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2v;->A08(Z)Lcom/facebook/ads/redexgen/X/2v;

    move-result-object v1

    .line 105266
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/qC;->A01(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 105267
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2v;->A07(Z)Lcom/facebook/ads/redexgen/X/2v;

    move-result-object v1

    .line 105268
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/qC;->A01(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 105269
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2v;->A09(Z)Lcom/facebook/ads/redexgen/X/2v;

    move-result-object v0

    .line 105270
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2v;->A0B()Lcom/facebook/ads/redexgen/X/AW;

    move-result-object v0

    .line 105271
    return-object v0
.end method

.method public static A01(I)Ljava/lang/String;
    .locals 1

    .line 105272
    const/16 v0, 0x24

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .line 105273
    const/4 v5, 0x1

    if-ne p0, p1, :cond_0

    .line 105274
    return v5

    .line 105275
    :cond_0
    instance-of v1, p1, Lcom/facebook/ads/redexgen/X/qC;

    const/4 v0, 0x0

    if-nez v1, :cond_1

    .line 105276
    return v0

    .line 105277
    :cond_1
    check-cast p1, Lcom/facebook/ads/redexgen/X/qC;

    .line 105278
    .local v1, "other":Lcom/facebook/ads/redexgen/X/qC;
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/qC;->A01:J

    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/qC;->A01:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/qC;->A00:J

    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/qC;->A00:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/qC;->A03:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/qC;->A03:Z

    if-ne v1, v0, :cond_2

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/qC;->A02:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/qC;->A02:Z

    if-ne v1, v0, :cond_2

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/qC;->A04:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/qC;->A04:Z

    if-ne v1, v0, :cond_2

    :goto_0
    return v5

    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 6

    .line 105279
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/qC;->A01:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/qC;->A01:J

    const/16 v5, 0x20

    ushr-long/2addr v0, v5

    xor-long/2addr v2, v0

    long-to-int v0, v2

    .line 105280
    .local v1, "result":I
    mul-int/lit8 v4, v0, 0x1f

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/qC;->A00:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/qC;->A00:J

    ushr-long/2addr v0, v5

    xor-long/2addr v2, v0

    long-to-int v0, v2

    add-int/2addr v4, v0

    .line 105281
    .end local v1    # "result":I
    .local v0, "result":I
    mul-int/lit8 v1, v4, 0x1f

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/qC;->A03:Z

    add-int/2addr v1, v0

    .line 105282
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/qC;->A02:Z

    add-int/2addr v1, v0

    .line 105283
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/qC;->A04:Z

    add-int/2addr v1, v0

    .line 105284
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method
