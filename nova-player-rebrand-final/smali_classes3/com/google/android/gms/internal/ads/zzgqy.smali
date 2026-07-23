.class public final Lcom/google/android/gms/internal/ads/zzgqy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgqx;

.field private zzc:Lcom/google/android/gms/internal/ads/zzgqx;


# direct methods
.method synthetic constructor <init>(Ljava/lang/String;[B)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Lcom/google/android/gms/internal/ads/zzgqx;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzgqx;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgqy;->zzb:Lcom/google/android/gms/internal/ads/zzgqx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgqy;->zzc:Lcom/google/android/gms/internal/ads/zzgqx;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgqy;->zza:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgqy;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgqy;->zzb:Lcom/google/android/gms/internal/ads/zzgqx;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzgqx;->zzb:Lcom/google/android/gms/internal/ads/zzgqx;

    const-string v2, ""

    :goto_0
    if-eqz v1, :cond_1

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzgqx;->zza:Ljava/lang/Object;

    .line 2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    .line 5
    invoke-static {v4}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v3, v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 6
    :goto_1
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzgqx;->zzb:Lcom/google/android/gms/internal/ads/zzgqx;

    const-string v2, ", "

    goto :goto_0

    :cond_1
    const/16 v1, 0x7d

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgqy;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgqx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgqx;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgqy;->zzc:Lcom/google/android/gms/internal/ads/zzgqx;

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzgqx;->zzb:Lcom/google/android/gms/internal/ads/zzgqx;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgqy;->zzc:Lcom/google/android/gms/internal/ads/zzgqx;

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzgqx;->zza:Ljava/lang/Object;

    return-object p0
.end method
