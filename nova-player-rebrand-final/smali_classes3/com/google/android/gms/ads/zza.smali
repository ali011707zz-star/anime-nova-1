.class final synthetic Lcom/google/android/gms/ads/zza;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/ads/AdLoader;

.field private final synthetic zzb:Lcom/google/android/gms/ads/internal/client/zzek;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/ads/AdLoader;Lcom/google/android/gms/ads/internal/client/zzek;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/zza;->zza:Lcom/google/android/gms/ads/AdLoader;

    iput-object p2, p0, Lcom/google/android/gms/ads/zza;->zzb:Lcom/google/android/gms/ads/internal/client/zzek;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/zza;->zza:Lcom/google/android/gms/ads/AdLoader;

    iget-object v1, p0, Lcom/google/android/gms/ads/zza;->zzb:Lcom/google/android/gms/ads/internal/client/zzek;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdLoader;->zza(Lcom/google/android/gms/ads/internal/client/zzek;)V

    return-void
.end method
