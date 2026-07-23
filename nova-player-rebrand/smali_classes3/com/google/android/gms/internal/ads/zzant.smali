.class final Lcom/google/android/gms/internal/ads/zzant;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field public final zza:Ljava/lang/String;

.field public final zzb:I

.field public final zzc:Ljava/lang/String;

.field public final zzd:Ljava/util/Set;


# direct methods
.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Set;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzant;->zzb:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzant;->zza:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzant;->zzc:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzant;->zzd:Ljava/util/Set;

    return-void
.end method

.method public static zza(Ljava/lang/String;I)Lcom/google/android/gms/internal/ads/zzant;
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgrc;->zza(Z)V

    const-string v0, " "

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    const-string v0, ""

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    move-object v0, v4

    .line 6
    :goto_0
    sget-object v4, Lcom/google/android/gms/internal/ads/zzfj;->zza:Ljava/lang/String;

    const-string v4, "\\."

    .line 7
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 8
    aget-object v2, p0, v2

    new-instance v3, Ljava/util/HashSet;

    .line 9
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 10
    :goto_1
    array-length v4, p0

    if-ge v1, v4, :cond_1

    .line 11
    aget-object v4, p0, v1

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/ads/zzant;

    invoke-direct {p0, v2, p1, v0, v3}, Lcom/google/android/gms/internal/ads/zzant;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Set;)V

    return-object p0
.end method

.method public static zzb()Lcom/google/android/gms/internal/ads/zzant;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzant;

    sget-object v1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    const/4 v2, 0x0

    const-string v3, ""

    invoke-direct {v0, v3, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzant;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Set;)V

    return-object v0
.end method
