.class public final Lcom/google/android/gms/internal/ads/zzgxx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzgxx;


# instance fields
.field private final zzb:[I

.field private final zzc:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgxx;

    const/4 v1, 0x0

    new-array v2, v1, [I

    invoke-direct {v0, v2, v1, v1}, Lcom/google/android/gms/internal/ads/zzgxx;-><init>([III)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgxx;->zza:Lcom/google/android/gms/internal/ads/zzgxx;

    return-void
.end method

.method private constructor <init>([III)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgxx;->zzb:[I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzgxx;->zzc:I

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzgxx;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgxx;->zza:Lcom/google/android/gms/internal/ads/zzgxx;

    return-object v0
.end method

.method public static zzb([I)Lcom/google/android/gms/internal/ads/zzgxx;
    .locals 3

    .line 1
    array-length v0, p0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgxx;

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    .line 2
    array-length v0, p0

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Lcom/google/android/gms/internal/ads/zzgxx;-><init>([III)V

    return-object v1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/ads/zzgxx;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgxx;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgxx;->zzc:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzgxx;->zzc:I

    if-ne v1, v3, :cond_4

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    .line 2
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/zzgxx;->zzd(I)I

    move-result v4

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/zzgxx;->zzd(I)I

    move-result v5

    if-eq v4, v5, :cond_2

    return v2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v0

    :cond_4
    return v2
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzgxx;->zzc:I

    if-ge v0, v2, :cond_0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgxx;->zzb:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgxx;->zzc:I

    if-eqz v0, :cond_1

    mul-int/lit8 v1, v0, 0x5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x5b

    .line 2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgxx;->zzb:[I

    const/4 v3, 0x0

    aget v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    :goto_0
    if-ge v3, v0, :cond_0

    const-string v4, ", "

    .line 3
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v1, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x5d

    .line 4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "[]"

    return-object v0
.end method

.method public final zzc()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgxx;->zzc:I

    return v0
.end method

.method public final zzd(I)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgxx;->zzc:I

    const-string v1, "index"

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgrc;->zzm(IILjava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgxx;->zzb:[I

    .line 2
    aget p1, v0, p1

    return p1
.end method
