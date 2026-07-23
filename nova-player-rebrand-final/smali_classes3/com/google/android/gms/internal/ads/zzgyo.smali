.class final synthetic Lcom/google/android/gms/internal/ads/zzgyo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzgyq;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzgub;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgyq;Lcom/google/android/gms/internal/ads/zzgub;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgyo;->zza:Lcom/google/android/gms/internal/ads/zzgyq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgyo;->zzb:Lcom/google/android/gms/internal/ads/zzgub;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgyo;->zza:Lcom/google/android/gms/internal/ads/zzgyq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgyo;->zzb:Lcom/google/android/gms/internal/ads/zzgub;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgyq;->zzz(Lcom/google/android/gms/internal/ads/zzgub;)V

    return-void
.end method
