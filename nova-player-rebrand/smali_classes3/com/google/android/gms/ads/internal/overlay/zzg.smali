.class final synthetic Lcom/google/android/gms/ads/internal/overlay/zzg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzclh;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/ads/internal/overlay/zzm;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/ads/internal/overlay/zzm;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzg;->zza:Lcom/google/android/gms/ads/internal/overlay/zzm;

    return-void
.end method


# virtual methods
.method public final synthetic zza(ZILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzg;->zza:Lcom/google/android/gms/ads/internal/overlay/zzm;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzd:Lcom/google/android/gms/internal/ads/zzcjl;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcjl;->zzI()V

    :cond_0
    return-void
.end method
