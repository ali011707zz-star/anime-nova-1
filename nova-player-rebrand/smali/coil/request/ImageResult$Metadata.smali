.class public final Lcoil/request/ImageResult$Metadata;
.super Ljava/lang/Object;
.source "ImageResult.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil/request/ImageResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Metadata"
.end annotation


# instance fields
.field private final dataSource:Lcoil/decode/DataSource;

.field private final isPlaceholderMemoryCacheKeyPresent:Z

.field private final isSampled:Z

.field private final memoryCacheKey:Lcoil/memory/MemoryCache$Key;


# direct methods
.method public constructor <init>(Lcoil/memory/MemoryCache$Key;ZLcoil/decode/DataSource;Z)V
    .locals 1

    const-string v0, "dataSource"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcoil/request/ImageResult$Metadata;->memoryCacheKey:Lcoil/memory/MemoryCache$Key;

    .line 30
    iput-boolean p2, p0, Lcoil/request/ImageResult$Metadata;->isSampled:Z

    .line 31
    iput-object p3, p0, Lcoil/request/ImageResult$Metadata;->dataSource:Lcoil/decode/DataSource;

    .line 32
    iput-boolean p4, p0, Lcoil/request/ImageResult$Metadata;->isPlaceholderMemoryCacheKeyPresent:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcoil/request/ImageResult$Metadata;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcoil/request/ImageResult$Metadata;

    iget-object v1, p0, Lcoil/request/ImageResult$Metadata;->memoryCacheKey:Lcoil/memory/MemoryCache$Key;

    iget-object v3, p1, Lcoil/request/ImageResult$Metadata;->memoryCacheKey:Lcoil/memory/MemoryCache$Key;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcoil/request/ImageResult$Metadata;->isSampled:Z

    iget-boolean v3, p1, Lcoil/request/ImageResult$Metadata;->isSampled:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcoil/request/ImageResult$Metadata;->dataSource:Lcoil/decode/DataSource;

    iget-object v3, p1, Lcoil/request/ImageResult$Metadata;->dataSource:Lcoil/decode/DataSource;

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcoil/request/ImageResult$Metadata;->isPlaceholderMemoryCacheKeyPresent:Z

    iget-boolean p1, p1, Lcoil/request/ImageResult$Metadata;->isPlaceholderMemoryCacheKeyPresent:Z

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getDataSource()Lcoil/decode/DataSource;
    .locals 1

    .line 31
    iget-object v0, p0, Lcoil/request/ImageResult$Metadata;->dataSource:Lcoil/decode/DataSource;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 0
    iget-object v0, p0, Lcoil/request/ImageResult$Metadata;->memoryCacheKey:Lcoil/memory/MemoryCache$Key;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcoil/request/ImageResult$Metadata;->isSampled:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    move v1, v2

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcoil/request/ImageResult$Metadata;->dataSource:Lcoil/decode/DataSource;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcoil/request/ImageResult$Metadata;->isPlaceholderMemoryCacheKeyPresent:Z

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public final isPlaceholderMemoryCacheKeyPresent()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lcoil/request/ImageResult$Metadata;->isPlaceholderMemoryCacheKeyPresent:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Metadata(memoryCacheKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcoil/request/ImageResult$Metadata;->memoryCacheKey:Lcoil/memory/MemoryCache$Key;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isSampled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcoil/request/ImageResult$Metadata;->isSampled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", dataSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcoil/request/ImageResult$Metadata;->dataSource:Lcoil/decode/DataSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isPlaceholderMemoryCacheKeyPresent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcoil/request/ImageResult$Metadata;->isPlaceholderMemoryCacheKeyPresent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
