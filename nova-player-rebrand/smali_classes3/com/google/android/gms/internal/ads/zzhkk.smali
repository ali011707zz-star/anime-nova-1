.class public abstract Lcom/google/android/gms/internal/ads/zzhkk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhye;

.field private final zzb:Ljava/lang/Class;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzhye;Ljava/lang/Class;[B)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhkk;->zza:Lcom/google/android/gms/internal/ads/zzhye;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhkk;->zzb:Ljava/lang/Class;

    return-void
.end method

.method public static zzd(Lcom/google/android/gms/internal/ads/zzhkj;Lcom/google/android/gms/internal/ads/zzhye;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhkk;
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhki;

    invoke-direct {v0, p1, p2, p0}, Lcom/google/android/gms/internal/ads/zzhki;-><init>(Lcom/google/android/gms/internal/ads/zzhye;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzhkj;)V

    return-object v0
.end method


# virtual methods
.method public abstract zza(Lcom/google/android/gms/internal/ads/zzhlg;)Lcom/google/android/gms/internal/ads/zzhbp;
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzhye;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhkk;->zza:Lcom/google/android/gms/internal/ads/zzhye;

    return-object v0
.end method

.method public final zzc()Ljava/lang/Class;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhkk;->zzb:Ljava/lang/Class;

    return-object v0
.end method
