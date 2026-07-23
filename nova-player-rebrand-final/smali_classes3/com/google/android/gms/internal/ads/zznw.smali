.class final synthetic Lcom/google/android/gms/internal/ads/zznw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdy;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzmy;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzwb;

.field private final synthetic zzc:Lcom/google/android/gms/internal/ads/zzwg;

.field private final synthetic zzd:Ljava/io/IOException;

.field private final synthetic zze:Z


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzmy;Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/zzwg;Ljava/io/IOException;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zznw;->zza:Lcom/google/android/gms/internal/ads/zzmy;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zznw;->zzb:Lcom/google/android/gms/internal/ads/zzwb;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zznw;->zzc:Lcom/google/android/gms/internal/ads/zzwg;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zznw;->zzd:Ljava/io/IOException;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zznw;->zze:Z

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)V
    .locals 6

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzna;

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zznw;->zza:Lcom/google/android/gms/internal/ads/zzmy;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zznw;->zzb:Lcom/google/android/gms/internal/ads/zzwb;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zznw;->zzc:Lcom/google/android/gms/internal/ads/zzwg;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zznw;->zzd:Ljava/io/IOException;

    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/zznw;->zze:Z

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzna;->zzh(Lcom/google/android/gms/internal/ads/zzmy;Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/zzwg;Ljava/io/IOException;Z)V

    return-void
.end method
