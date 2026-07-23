.class public final Lcom/google/ads/interactivemedia/v3/internal/zzyh;
.super Lcom/google/ads/interactivemedia/v3/internal/zzabb;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# static fields
.field private static final zzb:Ljava/io/Reader;

.field private static final zzc:Ljava/lang/Object;


# instance fields
.field private zzd:[Ljava/lang/Object;

.field private zze:I

.field private zzf:[Ljava/lang/String;

.field private zzg:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzyg;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzyg;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zzb:Ljava/io/Reader;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zzc:Ljava/lang/Object;

    return-void
.end method

.method private final zzA(Z)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zzE(I)V

    .line 2
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zzy()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zzf:[Ljava/lang/String;

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zze:I

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x1

    if-eq v4, p1, :cond_0

    move-object p1, v1

    goto :goto_0

    .line 6
    :cond_0
    const-string p1, "<skipped>"

    .line 5
    :goto_0
    aput-object p1, v2, v3

    .line 6
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zzB(Ljava/lang/Object;)V

    return-object v1
.end method

.method private final zzB(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zze:I

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zzd:[Ljava/lang/Object;

    array-length v2, v1

    if-ne v0, v2, :cond_0

    add-int/2addr v0, v0

    .line 2
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zzd:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zzg:[I

    .line 3
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zzg:[I

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zzf:[Ljava/lang/String;

    .line 4
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zzf:[Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zzd:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zze:I

    .line 5
    aput-object p1, v0, v1

    return-void
.end method

.method private final zzC(Z)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zze:I

    if-ge v1, v2, :cond_4

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zzd:[Ljava/lang/Object;

    .line 2
    aget-object v4, v3, v1

    instance-of v5, v4, Lcom/google/ads/interactivemedia/v3/internal/zzva;

    if-eqz v5, :cond_2

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v2, :cond_3

    .line 3
    aget-object v3, v3, v1

    instance-of v3, v3, Ljava/util/Iterator;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zzg:[I

    .line 4
    aget v3, v3, v1

    if-eqz p1, :cond_1

    if-lez v3, :cond_1

    add-int/lit8 v4, v2, -0x1

    if-eq v1, v4, :cond_0

    add-int/lit8 v2, v2, -0x2

    if-ne v1, v2, :cond_1

    :cond_0
    add-int/lit8 v3, v3, -0x1

    :cond_1
    const/16 v2, 0x5b

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    instance-of v4, v4, Lcom/google/ads/interactivemedia/v3/internal/zzvf;

    if-eqz v4, :cond_3

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v2, :cond_3

    .line 6
    aget-object v2, v3, v1

    instance-of v2, v2, Ljava/util/Iterator;

    if-eqz v2, :cond_3

    const/16 v2, 0x2e

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zzf:[Ljava/lang/String;

    .line 8
    aget-object v2, v2, v1

    if-eqz v2, :cond_3

    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final zzD()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zzC(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, " at path "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final zzE(I)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabb;->zzr()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabb;->zzr()I

    move-result v1

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzabc;->zza(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zzD()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzabc;->zza(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x12

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v4, v6

    add-int/2addr v4, v3

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Expected "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " but was "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final zzy()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zzd:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zze:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private final zzz()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zzd:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zze:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zze:I

    aget-object v2, v0, v1

    const/4 v3, 0x0

    .line 2
    aput-object v3, v0, v1

    return-object v2
.end method


# virtual methods
.method public final close()V
    .locals 4

    .line 0
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zzc:Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zzd:[Ljava/lang/Object;

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zze:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    const-class v0, Lcom/google/ads/interactivemedia/v3/internal/zzyh;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zzD()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zzE(I)V

    .line 2
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zzy()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzva;

    .line 3
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzva;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zzB(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zzg:[I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zze:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    .line 4
    aput v2, v0, v1

    return-void
.end method

.method public final zzb()V
    .locals 3

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zzE(I)V

    .line 2
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zzz()Ljava/lang/Object;

    .line 3
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zzz()Ljava/lang/Object;

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zze:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zzg:[I

    add-int/lit8 v0, v0, -0x1

    .line 4
    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    :cond_0
    return-void
.end method

.method public final zzc()V
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zzE(I)V

    .line 2
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zzy()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzvf;

    .line 3
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzvf;->zzb()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zzB(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzd()V
    .locals 3

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zzE(I)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zzf:[Ljava/lang/String;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zze:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    .line 2
    aput-object v2, v0, v1

    .line 3
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zzz()Ljava/lang/Object;

    .line 4
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zzz()Ljava/lang/Object;

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zze:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zzg:[I

    add-int/lit8 v0, v0, -0x1

    .line 5
    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    :cond_0
    return-void
.end method

.method public final zze()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabb;->zzr()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzf()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zzA(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzg()Ljava/lang/String;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabb;->zzr()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 4
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zzD()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzabc;->zza(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x18

    add-int/2addr v4, v3

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Expected STRING but was "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zzz()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzvh;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzvh;->zzf()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zze:I

    if-lez v1, :cond_2

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zzg:[I

    add-int/lit8 v1, v1, -0x1

    .line 3
    aget v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    :cond_2
    return-object v0
.end method

.method public final zzh()Z
    .locals 4

    const/16 v0, 0x8

    .line 1
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zzE(I)V

    .line 2
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zzz()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzvh;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzvh;->zzb()Z

    move-result v0

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zze:I

    if-lez v1, :cond_0

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zzg:[I

    add-int/lit8 v1, v1, -0x1

    .line 3
    aget v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    :cond_0
    return v0
.end method

.method public final zzi()V
    .locals 3

    const/16 v0, 0x9

    .line 1
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zzE(I)V

    .line 2
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zzz()Ljava/lang/Object;

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zze:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zzg:[I

    add-int/lit8 v0, v0, -0x1

    .line 3
    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    :cond_0
    return-void
.end method

.method public final zzj()D
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabb;->zzr()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 7
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zzD()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzabc;->zza(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x18

    add-int/2addr v4, v3

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Expected NUMBER but was "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zzy()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzvh;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzvh;->zzg()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabb;->zzs()Z

    move-result v2

    if-nez v2, :cond_3

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/zzabe;

    .line 6
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x21

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "JSON forbids NaN and infinities: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzabe;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zzz()Ljava/lang/Object;

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zze:I

    if-lez v2, :cond_4

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zzg:[I

    add-int/lit8 v2, v2, -0x1

    .line 5
    aget v4, v3, v2

    add-int/lit8 v4, v4, 0x1

    aput v4, v3, v2

    :cond_4
    return-wide v0
.end method

.method public final zzk()J
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabb;->zzr()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 5
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zzD()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzabc;->zza(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x18

    add-int/2addr v4, v3

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Expected NUMBER but was "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zzy()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzvh;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzvh;->zzj()J

    move-result-wide v0

    .line 3
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zzz()Ljava/lang/Object;

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zze:I

    if-lez v2, :cond_2

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zzg:[I

    add-int/lit8 v2, v2, -0x1

    .line 4
    aget v4, v3, v2

    add-int/lit8 v4, v4, 0x1

    aput v4, v3, v2

    :cond_2
    return-wide v0
.end method

.method public final zzl()I
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabb;->zzr()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 5
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zzD()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzabc;->zza(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x18

    add-int/2addr v4, v3

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Expected NUMBER but was "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zzy()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzvh;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzvh;->zzk()I

    move-result v0

    .line 3
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zzz()Ljava/lang/Object;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zze:I

    if-lez v1, :cond_2

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zzg:[I

    add-int/lit8 v1, v1, -0x1

    .line 4
    aget v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    :cond_2
    return v0
.end method

.method final zzm()Lcom/google/ads/interactivemedia/v3/internal/zzvc;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabb;->zzr()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zzy()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzvc;

    .line 4
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabb;->zzn()V

    return-object v0

    .line 1
    :cond_0
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzabc;->zza(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x27

    .line 2
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unexpected "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " when reading a JsonElement."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final zzn()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabb;->zzr()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/16 v2, 0x9

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zzz()Ljava/lang/Object;

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zze:I

    if-lez v0, :cond_2

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zzg:[I

    add-int/lit8 v0, v0, -0x1

    .line 6
    aget v3, v2, v0

    add-int/2addr v3, v1

    aput v3, v2, v0

    return-void

    .line 4
    :cond_0
    invoke-direct {p0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zzA(Z)Ljava/lang/String;

    return-void

    .line 2
    :cond_1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabb;->zzd()V

    :cond_2
    return-void

    .line 3
    :cond_3
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabb;->zzb()V

    return-void
.end method

.method public final zzo()V
    .locals 2

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zzE(I)V

    .line 2
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zzy()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zzB(Ljava/lang/Object;)V

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/zzvh;

    .line 5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzvh;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zzB(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzp()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zzC(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzq()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zzC(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzr()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zze:I

    if-nez v0, :cond_0

    const/16 v0, 0xa

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zzy()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Ljava/util/Iterator;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zzd:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zze:I

    add-int/lit8 v2, v2, -0x2

    .line 3
    aget-object v1, v1, v2

    instance-of v1, v1, Lcom/google/ads/interactivemedia/v3/internal/zzvf;

    .line 4
    check-cast v0, Ljava/util/Iterator;

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_1

    const/4 v0, 0x5

    return v0

    .line 6
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zzB(Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabb;->zzr()I

    move-result v0

    return v0

    :cond_2
    if-eqz v1, :cond_3

    const/4 v0, 0x4

    return v0

    :cond_3
    const/4 v0, 0x2

    return v0

    :cond_4
    instance-of v1, v0, Lcom/google/ads/interactivemedia/v3/internal/zzvf;

    if-eqz v1, :cond_5

    const/4 v0, 0x3

    return v0

    :cond_5
    instance-of v1, v0, Lcom/google/ads/interactivemedia/v3/internal/zzva;

    if-eqz v1, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    instance-of v1, v0, Lcom/google/ads/interactivemedia/v3/internal/zzvh;

    if-eqz v1, :cond_a

    .line 8
    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzvh;

    .line 9
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzvh;->zze()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v0, 0x6

    return v0

    .line 10
    :cond_7
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzvh;->zza()Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x8

    return v0

    .line 11
    :cond_8
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzvh;->zzc()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x7

    return v0

    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    .line 12
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 11
    :cond_a
    instance-of v1, v0, Lcom/google/ads/interactivemedia/v3/internal/zzve;

    if-eqz v1, :cond_b

    const/16 v0, 0x9

    return v0

    .line 13
    :cond_b
    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/zzyh;->zzc:Ljava/lang/Object;

    if-ne v0, v1, :cond_c

    .line 14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonReader is closed"

    .line 13
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12
    :cond_c
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/zzabe;

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x2d

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Custom JsonElement subclass "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not supported"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzabe;-><init>(Ljava/lang/String;)V

    throw v1
.end method
