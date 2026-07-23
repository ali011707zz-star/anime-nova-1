.class final synthetic Lcom/google/android/gms/internal/ads/zzeaf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzeak;

.field private final synthetic zzb:Ljava/lang/Object;

.field private final synthetic zzc:Lcom/google/android/gms/internal/ads/zzcen;

.field private final synthetic zzd:Ljava/lang/String;

.field private final synthetic zze:J

.field private final synthetic zzf:Lcom/google/android/gms/internal/ads/zzfoe;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzeak;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzcen;Ljava/lang/String;JLcom/google/android/gms/internal/ads/zzfoe;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeaf;->zza:Lcom/google/android/gms/internal/ads/zzeak;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeaf;->zzb:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeaf;->zzc:Lcom/google/android/gms/internal/ads/zzcen;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeaf;->zzd:Ljava/lang/String;

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzeaf;->zze:J

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzeaf;->zzf:Lcom/google/android/gms/internal/ads/zzfoe;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 7

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeaf;->zza:Lcom/google/android/gms/internal/ads/zzeak;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeaf;->zzb:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeaf;->zzc:Lcom/google/android/gms/internal/ads/zzcen;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzeaf;->zzd:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzeaf;->zze:J

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzeaf;->zzf:Lcom/google/android/gms/internal/ads/zzfoe;

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzeak;->zzi(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzcen;Ljava/lang/String;JLcom/google/android/gms/internal/ads/zzfoe;)V

    return-void
.end method
