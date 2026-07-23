.class final synthetic Lcom/google/android/gms/internal/ads/zzeov;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzfjc;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfir;

.field private final synthetic zzc:Lcom/google/android/gms/internal/ads/zzekj;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzeow;Lcom/google/android/gms/internal/ads/zzfjc;Lcom/google/android/gms/internal/ads/zzfir;Lcom/google/android/gms/internal/ads/zzekj;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeov;->zza:Lcom/google/android/gms/internal/ads/zzfjc;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeov;->zzb:Lcom/google/android/gms/internal/ads/zzfir;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeov;->zzc:Lcom/google/android/gms/internal/ads/zzekj;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeov;->zza:Lcom/google/android/gms/internal/ads/zzfjc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeov;->zzb:Lcom/google/android/gms/internal/ads/zzfir;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeov;->zzc:Lcom/google/android/gms/internal/ads/zzekj;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzeoz;->zzd(Lcom/google/android/gms/internal/ads/zzfjc;Lcom/google/android/gms/internal/ads/zzfir;Lcom/google/android/gms/internal/ads/zzekj;)V

    return-void
.end method
