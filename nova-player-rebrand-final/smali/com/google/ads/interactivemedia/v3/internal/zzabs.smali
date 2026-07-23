.class Lcom/google/ads/interactivemedia/v3/internal/zzabs;
.super Lcom/google/ads/interactivemedia/v3/internal/zzabr;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field protected final zza:[B


# direct methods
.method constructor <init>([B)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzabr;-><init>([B)V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabs;->zza:[B

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabs;->zzc()I

    move-result v1

    move-object v3, p1

    check-cast v3, Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzabt;->zzc()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabs;->zzc()I

    move-result v1

    if-nez v1, :cond_3

    return v0

    :cond_3
    instance-of v0, p1, Lcom/google/ads/interactivemedia/v3/internal/zzabs;

    if-eqz v0, :cond_5

    .line 2
    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/zzabs;

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabt;->zzr()I

    move-result v0

    .line 3
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzabt;->zzr()I

    move-result v1

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    if-eq v0, v1, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabs;->zzc()I

    move-result v0

    .line 4
    invoke-virtual {p0, p1, v2, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzabs;->zzh(Lcom/google/ads/interactivemedia/v3/internal/zzabt;II)Z

    move-result p1

    return p1

    .line 5
    :cond_5
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public zza(I)B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabs;->zza:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method zzb(I)B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabs;->zza:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public zzc()I
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabs;->zza:[B

    array-length v0, v0

    return v0
.end method

.method protected zzd()I
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method protected zze([BIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabs;->zza:[B

    invoke-static {v0, p2, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method final zzh(Lcom/google/ads/interactivemedia/v3/internal/zzabt;II)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzabt;->zzc()I

    move-result v0

    if-gt p3, v0, :cond_4

    add-int v0, p2, p3

    .line 3
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzabt;->zzc()I

    move-result v1

    if-gt v0, v1, :cond_3

    .line 4
    instance-of v1, p1, Lcom/google/ads/interactivemedia/v3/internal/zzabs;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 5
    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/zzabs;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabs;->zza:[B

    .line 6
    iget-object v1, p1, Lcom/google/ads/interactivemedia/v3/internal/zzabs;->zza:[B

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabs;->zzd()I

    move-result v3

    add-int/2addr v3, p3

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabs;->zzd()I

    move-result p3

    .line 7
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzabs;->zzd()I

    move-result p1

    add-int/2addr p1, p2

    :goto_0
    if-ge p3, v3, :cond_1

    .line 8
    aget-byte p2, v0, p3

    aget-byte v4, v1, p1

    if-eq p2, v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 p3, p3, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    .line 9
    :cond_2
    invoke-virtual {p1, p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzabt;->zzi(II)Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    move-result-object p1

    invoke-virtual {p0, v2, p3}, Lcom/google/ads/interactivemedia/v3/internal/zzabs;->zzi(II)Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzabt;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 4
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzabt;->zzc()I

    move-result p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x18

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/2addr v1, v2

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Ran off end of other: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabs;->zzc()I

    move-result p2

    .line 2
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x12

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/2addr v0, v1

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Length too large: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzi(II)Lcom/google/ads/interactivemedia/v3/internal/zzabt;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabs;->zzc()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzabt;->zzt(III)I

    move-result p2

    if-nez p2, :cond_0

    sget-object p1, Lcom/google/ads/interactivemedia/v3/internal/zzabt;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabs;->zza:[B

    .line 2
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/zzabp;

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabs;->zzd()I

    move-result v2

    add-int/2addr v2, p1

    invoke-direct {v1, v0, v2, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzabp;-><init>([BII)V

    return-object v1
.end method

.method final zzj(Lcom/google/ads/interactivemedia/v3/internal/zzabm;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabs;->zzd()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabs;->zzc()I

    move-result v1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/zzabx;

    .line 1
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabs;->zza:[B

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzabx;->zzr([BII)V

    return-void
.end method

.method protected final zzk(III)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabs;->zzd()I

    move-result v0

    add-int/2addr v0, p2

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabs;->zza:[B

    invoke-static {p1, p2, v0, p3}, Lcom/google/ads/interactivemedia/v3/internal/zzadb;->zzc(I[BII)I

    move-result p1

    return p1
.end method

.method public final zzl()Lcom/google/ads/interactivemedia/v3/internal/zzabv;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabs;->zza:[B

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabs;->zzd()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzabs;->zzc()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzabv;->zzC([BIIZ)Lcom/google/ads/interactivemedia/v3/internal/zzabv;

    move-result-object v0

    return-object v0
.end method
