.class final Lcom/google/ads/interactivemedia/v3/internal/zzrs;
.super Lcom/google/ads/interactivemedia/v3/internal/zzqz;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# static fields
.field static final zza:Lcom/google/ads/interactivemedia/v3/internal/zzrs;

.field private static final zzd:[Ljava/lang/Object;


# instance fields
.field final transient zzb:[Ljava/lang/Object;

.field final transient zzc:[Ljava/lang/Object;

.field private final transient zze:I

.field private final transient zzf:I

.field private final transient zzg:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x0

    .line 1
    new-array v2, v0, [Ljava/lang/Object;

    sput-object v2, Lcom/google/ads/interactivemedia/v3/internal/zzrs;->zzd:[Ljava/lang/Object;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/zzrs;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    invoke-direct/range {v1 .. v6}, Lcom/google/ads/interactivemedia/v3/internal/zzrs;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    sput-object v1, Lcom/google/ads/interactivemedia/v3/internal/zzrs;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzrs;

    return-void
.end method

.method constructor <init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzqz;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrs;->zzb:[Ljava/lang/Object;

    iput p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrs;->zze:I

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrs;->zzc:[Ljava/lang/Object;

    iput p4, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrs;->zzf:I

    iput p5, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrs;->zzg:I

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 1
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrs;->zzc:[Ljava/lang/Object;

    array-length v2, v1

    if-nez v2, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzqm;->zzb(Ljava/lang/Object;)I

    move-result v2

    :goto_0
    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrs;->zzf:I

    and-int/2addr v2, v3

    .line 3
    aget-object v3, v1, v2

    if-nez v3, :cond_1

    return v0

    .line 4
    :cond_1
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrs;->zze:I

    return v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzqp;->zze()Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzqu;->zzn(I)Lcom/google/ads/interactivemedia/v3/internal/zzsb;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrs;->zzg:I

    return v0
.end method

.method public final zza()Lcom/google/ads/interactivemedia/v3/internal/zzsa;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzqp;->zze()Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzqu;->zzn(I)Lcom/google/ads/interactivemedia/v3/internal/zzsb;

    move-result-object v0

    return-object v0
.end method

.method final zzb()[Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrs;->zzb:[Ljava/lang/Object;

    return-object v0
.end method

.method final zzc()I
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method final zzd()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrs;->zzg:I

    return v0
.end method

.method final zzf()Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method final zzg([Ljava/lang/Object;I)I
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrs;->zzb:[Ljava/lang/Object;

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrs;->zzg:I

    const/4 v1, 0x0

    invoke-static {p2, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v0
.end method

.method final zzi()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method final zzm()Lcom/google/ads/interactivemedia/v3/internal/zzqu;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrs;->zzb:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrs;->zzg:I

    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzqu;->zzm([Ljava/lang/Object;I)Lcom/google/ads/interactivemedia/v3/internal/zzqu;

    move-result-object v0

    return-object v0
.end method
