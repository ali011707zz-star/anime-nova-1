.class public final Lcom/google/android/gms/internal/ads/zzhuo;
.super Lcom/google/android/gms/internal/ads/zzhuw;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhuk;

.field private final zzb:Ljava/math/BigInteger;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzhye;

.field private final zzd:Ljava/lang/Integer;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzhuk;Ljava/math/BigInteger;Lcom/google/android/gms/internal/ads/zzhye;Ljava/lang/Integer;[B)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhuw;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhuo;->zza:Lcom/google/android/gms/internal/ads/zzhuk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhuo;->zzb:Ljava/math/BigInteger;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzhuo;->zzc:Lcom/google/android/gms/internal/ads/zzhye;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzhuo;->zzd:Ljava/lang/Integer;

    return-void
.end method

.method public static zzc()Lcom/google/android/gms/internal/ads/zzhun;
    .locals 2

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhun;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhun;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public final synthetic zza()Lcom/google/android/gms/internal/ads/zzhbp;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhuo;->zza:Lcom/google/android/gms/internal/ads/zzhuk;

    return-object v0
.end method

.method public final zzb()Ljava/lang/Integer;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhuo;->zzd:Ljava/lang/Integer;

    return-object v0
.end method

.method public final zzd()Ljava/math/BigInteger;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhuo;->zzb:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzhye;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhuo;->zzc:Lcom/google/android/gms/internal/ads/zzhye;

    return-object v0
.end method

.method public final zzf()Lcom/google/android/gms/internal/ads/zzhuk;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhuo;->zza:Lcom/google/android/gms/internal/ads/zzhuk;

    return-object v0
.end method
