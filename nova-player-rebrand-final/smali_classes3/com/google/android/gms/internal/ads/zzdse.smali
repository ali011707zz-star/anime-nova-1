.class final synthetic Lcom/google/android/gms/internal/ads/zzdse;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzclh;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzdsh;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzcjl;

.field private final synthetic zzc:Lcom/google/android/gms/internal/ads/zzcem;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdsh;Lcom/google/android/gms/internal/ads/zzcjl;Lcom/google/android/gms/internal/ads/zzcem;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdse;->zza:Lcom/google/android/gms/internal/ads/zzdsh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdse;->zzb:Lcom/google/android/gms/internal/ads/zzcjl;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdse;->zzc:Lcom/google/android/gms/internal/ads/zzcem;

    return-void
.end method


# virtual methods
.method public final synthetic zza(ZILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdse;->zza:Lcom/google/android/gms/internal/ads/zzdsh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdse;->zzb:Lcom/google/android/gms/internal/ads/zzcjl;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdse;->zzc:Lcom/google/android/gms/internal/ads/zzcem;

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzdsh;->zzf(Lcom/google/android/gms/internal/ads/zzcjl;Lcom/google/android/gms/internal/ads/zzcem;ZILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
