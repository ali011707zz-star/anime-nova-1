.class final synthetic Lcom/google/android/gms/internal/ads/zzbsb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzbsl;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbsk;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbsl;Lcom/google/android/gms/internal/ads/zzazh;Lcom/google/android/gms/internal/ads/zzbsk;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbsb;->zza:Lcom/google/android/gms/internal/ads/zzbsl;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbsb;->zzb:Lcom/google/android/gms/internal/ads/zzbsk;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsb;->zzb:Lcom/google/android/gms/internal/ads/zzbsk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbsb;->zza:Lcom/google/android/gms/internal/ads/zzbsl;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzbsl;->zzd(Lcom/google/android/gms/internal/ads/zzazh;Lcom/google/android/gms/internal/ads/zzbsk;)V

    return-void
.end method
