.class public final Lcom/facebook/ads/redexgen/X/8O;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/8N;
    }
.end annotation


# static fields
.field public static final A03:Lcom/facebook/ads/redexgen/X/8O;


# instance fields
.field public final A00:Ljava/lang/String;

.field public final A01:Lcom/facebook/ads/redexgen/X/8N;

.field public final A02:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 501
    sget v1, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x1f

    const-string v2, ""

    if-ge v1, v0, :cond_0

    .line 502
    new-instance v1, Lcom/facebook/ads/redexgen/X/8O;

    invoke-direct {v1, v2}, Lcom/facebook/ads/redexgen/X/8O;-><init>(Ljava/lang/String;)V

    .line 503
    :goto_0
    sput-object v1, Lcom/facebook/ads/redexgen/X/8O;->A03:Lcom/facebook/ads/redexgen/X/8O;

    .line 504
    return-void

    .line 505
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/8N;->A01:Lcom/facebook/ads/redexgen/X/8N;

    new-instance v1, Lcom/facebook/ads/redexgen/X/8O;

    invoke-direct {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/8O;-><init>(Lcom/facebook/ads/redexgen/X/8N;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/8N;Ljava/lang/String;)V
    .locals 1

    .line 22858
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22859
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/8O;->A01:Lcom/facebook/ads/redexgen/X/8N;

    .line 22860
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/8O;->A00:Ljava/lang/String;

    .line 22861
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8O;->A02:Ljava/lang/Object;

    .line 22862
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 22863
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22864
    sget v1, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x1f

    if-ge v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 22865
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/8O;->A00:Ljava/lang/String;

    .line 22866
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8O;->A01:Lcom/facebook/ads/redexgen/X/8N;

    .line 22867
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8O;->A02:Ljava/lang/Object;

    .line 22868
    return-void

    .line 22869
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A00()Landroid/media/metrics/LogSessionId;
    .locals 1

    .line 22870
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8O;->A01:Lcom/facebook/ads/redexgen/X/8N;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/8N;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/8N;->A00:Landroid/media/metrics/LogSessionId;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 22871
    const/4 v2, 0x1

    if-ne p0, p1, :cond_0

    .line 22872
    return v2

    .line 22873
    :cond_0
    instance-of v1, p1, Lcom/facebook/ads/redexgen/X/8O;

    const/4 v0, 0x0

    if-nez v1, :cond_1

    .line 22874
    return v0

    .line 22875
    :cond_1
    check-cast p1, Lcom/facebook/ads/redexgen/X/8O;

    .line 22876
    .local v1, "playerId":Lcom/facebook/ads/redexgen/X/8O;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8O;->A00:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/8O;->A00:Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8O;->A01:Lcom/facebook/ads/redexgen/X/8N;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/8O;->A01:Lcom/facebook/ads/redexgen/X/8N;

    .line 22877
    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8O;->A02:Ljava/lang/Object;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/8O;->A02:Ljava/lang/Object;

    .line 22878
    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 22879
    :goto_0
    return v2

    .line 22880
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 5

    .line 22881
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/8O;->A00:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/8O;->A01:Lcom/facebook/ads/redexgen/X/8N;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/8O;->A02:Ljava/lang/Object;

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v4, v1, v0

    const/4 v0, 0x1

    aput-object v3, v1, v0

    const/4 v0, 0x2

    aput-object v2, v1, v0

    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
