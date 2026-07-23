.class final Landroidx/media3/exoplayer/ima/AdTagLoader$AdInfo;
.super Ljava/lang/Object;
.source "AdTagLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/ima/AdTagLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AdInfo"
.end annotation


# instance fields
.field public final adGroupIndex:I

.field public final adIndexInAdGroup:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1570
    iput p1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader$AdInfo;->adGroupIndex:I

    .line 1571
    iput p2, p0, Landroidx/media3/exoplayer/ima/AdTagLoader$AdInfo;->adIndexInAdGroup:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1579
    const-class v2, Landroidx/media3/exoplayer/ima/AdTagLoader$AdInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 1582
    :cond_1
    check-cast p1, Landroidx/media3/exoplayer/ima/AdTagLoader$AdInfo;

    .line 1583
    iget v2, p0, Landroidx/media3/exoplayer/ima/AdTagLoader$AdInfo;->adGroupIndex:I

    iget v3, p1, Landroidx/media3/exoplayer/ima/AdTagLoader$AdInfo;->adGroupIndex:I

    if-eq v2, v3, :cond_2

    return v1

    .line 1586
    :cond_2
    iget v2, p0, Landroidx/media3/exoplayer/ima/AdTagLoader$AdInfo;->adIndexInAdGroup:I

    iget p1, p1, Landroidx/media3/exoplayer/ima/AdTagLoader$AdInfo;->adIndexInAdGroup:I

    if-ne v2, p1, :cond_3

    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1591
    iget v0, p0, Landroidx/media3/exoplayer/ima/AdTagLoader$AdInfo;->adGroupIndex:I

    mul-int/lit8 v0, v0, 0x1f

    .line 1592
    iget v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader$AdInfo;->adIndexInAdGroup:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader$AdInfo;->adGroupIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/media3/exoplayer/ima/AdTagLoader$AdInfo;->adIndexInAdGroup:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
