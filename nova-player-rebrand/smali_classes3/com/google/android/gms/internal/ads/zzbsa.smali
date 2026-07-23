.class final synthetic Lcom/google/android/gms/internal/ads/zzbsa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzbsl;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbsk;

.field private final synthetic zzc:Lcom/google/android/gms/internal/ads/zzbrg;

.field private final synthetic zzd:Ljava/util/ArrayList;

.field private final synthetic zze:J


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbsl;Lcom/google/android/gms/internal/ads/zzbsk;Lcom/google/android/gms/internal/ads/zzbrg;Ljava/util/ArrayList;J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbsa;->zza:Lcom/google/android/gms/internal/ads/zzbsl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbsa;->zzb:Lcom/google/android/gms/internal/ads/zzbsk;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbsa;->zzc:Lcom/google/android/gms/internal/ads/zzbrg;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbsa;->zzd:Ljava/util/ArrayList;

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzbsa;->zze:J

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsa;->zza:Lcom/google/android/gms/internal/ads/zzbsl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbsa;->zzb:Lcom/google/android/gms/internal/ads/zzbsk;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbsa;->zzc:Lcom/google/android/gms/internal/ads/zzbrg;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbsa;->zzd:Ljava/util/ArrayList;

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzbsa;->zze:J

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzbsl;->zzf(Lcom/google/android/gms/internal/ads/zzbsk;Lcom/google/android/gms/internal/ads/zzbrg;Ljava/util/ArrayList;J)V

    return-void
.end method
