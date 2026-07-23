.class public final Lcom/google/android/gms/internal/ads/zzes;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzes;


# instance fields
.field private final zzb:I

.field private final zzc:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzes;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzes;-><init>(II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzes;->zza:Lcom/google/android/gms/internal/ads/zzes;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzes;

    const/4 v1, 0x0

    .line 2
    invoke-direct {v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzes;-><init>(II)V

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfj;->zza:Ljava/lang/String;

    const/16 v0, 0x24

    .line 4
    invoke-static {v1, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    const/4 v1, 0x1

    .line 5
    invoke-static {v1, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    if-ltz p1, :cond_2

    :cond_0
    const/4 v2, 0x1

    if-eq p2, v1, :cond_1

    if-ltz p2, :cond_2

    :cond_1
    move v0, v2

    :cond_2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgrc;->zza(Z)V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzes;->zzb:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzes;->zzc:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    .line 1
    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/ads/zzes;

    if-eqz v2, :cond_2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzes;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzes;->zzb:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzes;->zzb:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzes;->zzc:I

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzes;->zzc:I

    if-ne v2, p1, :cond_2

    return v1

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzes;->zzb:I

    shl-int/lit8 v1, v0, 0x10

    ushr-int/lit8 v0, v0, 0x10

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzes;->zzc:I

    or-int/2addr v0, v1

    xor-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzes;->zzb:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzes;->zzc:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v3

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzes;->zzb:I

    return v0
.end method

.method public final zzb()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzes;->zzc:I

    return v0
.end method
