.class final synthetic Lcom/google/android/gms/internal/ads/zzeir;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfmu;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzeiu;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzeiw;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzeiu;Lcom/google/android/gms/internal/ads/zzeiw;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeir;->zza:Lcom/google/android/gms/internal/ads/zzeiu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeir;->zzb:Lcom/google/android/gms/internal/ads/zzeiw;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeir;->zza:Lcom/google/android/gms/internal/ads/zzeiu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeir;->zzb:Lcom/google/android/gms/internal/ads/zzeiw;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzeiu;->zzh(Lcom/google/android/gms/internal/ads/zzeiw;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;

    const/4 p1, 0x0

    return-object p1
.end method
