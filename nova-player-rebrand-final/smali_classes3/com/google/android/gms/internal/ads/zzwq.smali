.class final synthetic Lcom/google/android/gms/internal/ads/zzwq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdr;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzwu;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzwb;

.field private final synthetic zzc:Lcom/google/android/gms/internal/ads/zzwg;

.field private final synthetic zzd:Ljava/io/IOException;

.field private final synthetic zze:Z


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzwu;Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/zzwg;Ljava/io/IOException;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwq;->zza:Lcom/google/android/gms/internal/ads/zzwu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzwq;->zzb:Lcom/google/android/gms/internal/ads/zzwb;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzwq;->zzc:Lcom/google/android/gms/internal/ads/zzwg;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzwq;->zzd:Ljava/io/IOException;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzwq;->zze:Z

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwq;->zza:Lcom/google/android/gms/internal/ads/zzwu;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzwu;->zzb:Lcom/google/android/gms/internal/ads/zzwk;

    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzwv;

    .line 1
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzwq;->zzb:Lcom/google/android/gms/internal/ads/zzwb;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzwq;->zzc:Lcom/google/android/gms/internal/ads/zzwg;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzwq;->zzd:Ljava/io/IOException;

    iget-boolean v7, p0, Lcom/google/android/gms/internal/ads/zzwq;->zze:Z

    const/4 v2, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzwv;->zzal(ILcom/google/android/gms/internal/ads/zzwk;Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/zzwg;Ljava/io/IOException;Z)V

    return-void
.end method
