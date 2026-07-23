.class final Lcom/google/android/gms/internal/ads/zzcon;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzegd;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcnp;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzcom;

.field private zzc:Lcom/google/android/gms/internal/ads/zzeek;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcnp;Lcom/google/android/gms/internal/ads/zzcom;[B)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcon;->zza:Lcom/google/android/gms/internal/ads/zzcnp;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcon;->zzb:Lcom/google/android/gms/internal/ads/zzcom;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzege;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcon;->zzc:Lcom/google/android/gms/internal/ads/zzeek;

    const-class v1, Lcom/google/android/gms/internal/ads/zzeek;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zziko;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcoo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcon;->zza:Lcom/google/android/gms/internal/ads/zzcnp;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcon;->zzb:Lcom/google/android/gms/internal/ads/zzcom;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcon;->zzc:Lcom/google/android/gms/internal/ads/zzeek;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcoo;-><init>(Lcom/google/android/gms/internal/ads/zzcnp;Lcom/google/android/gms/internal/ads/zzcom;Lcom/google/android/gms/internal/ads/zzeek;)V

    return-object v0
.end method

.method public final bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzeek;)Lcom/google/android/gms/internal/ads/zzegd;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcon;->zzc:Lcom/google/android/gms/internal/ads/zzeek;

    return-object p0
.end method
