.class public final Lcom/google/android/gms/internal/ads/zzicv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzicu;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzies;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzies;Ljava/lang/Object;)V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Lcom/google/android/gms/internal/ads/zzicu;

    const-string v0, ""

    invoke-direct {p2, p1, v0, p3, p4}, Lcom/google/android/gms/internal/ads/zzicu;-><init>(Lcom/google/android/gms/internal/ads/zzies;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzies;Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzicv;->zza:Lcom/google/android/gms/internal/ads/zzicu;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzies;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzies;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzicv;
    .locals 1

    .line 0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzicv;

    const-string v0, ""

    invoke-direct {p1, p0, v0, p2, p3}, Lcom/google/android/gms/internal/ads/zzicv;-><init>(Lcom/google/android/gms/internal/ads/zzies;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzies;Ljava/lang/Object;)V

    return-object p1
.end method

.method static zzb(Lcom/google/android/gms/internal/ads/zziaw;Lcom/google/android/gms/internal/ads/zzicu;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzicu;->zza:Lcom/google/android/gms/internal/ads/zzies;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzibg;->zzf(Lcom/google/android/gms/internal/ads/zziaw;Lcom/google/android/gms/internal/ads/zzies;ILjava/lang/Object;)V

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzicu;->zzc:Lcom/google/android/gms/internal/ads/zzies;

    const/4 p2, 0x2

    .line 2
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzibg;->zzf(Lcom/google/android/gms/internal/ads/zziaw;Lcom/google/android/gms/internal/ads/zzies;ILjava/lang/Object;)V

    return-void
.end method

.method static zzc(Lcom/google/android/gms/internal/ads/zzicu;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzicu;->zza:Lcom/google/android/gms/internal/ads/zzies;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzicu;->zzc:Lcom/google/android/gms/internal/ads/zzies;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzibg;->zzh(Lcom/google/android/gms/internal/ads/zzies;ILjava/lang/Object;)I

    move-result p1

    const/4 v0, 0x2

    .line 2
    invoke-static {p0, v0, p2}, Lcom/google/android/gms/internal/ads/zzibg;->zzh(Lcom/google/android/gms/internal/ads/zzies;ILjava/lang/Object;)I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method


# virtual methods
.method public final zzd(ILjava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzicv;->zza:Lcom/google/android/gms/internal/ads/zzicu;

    shl-int/lit8 p1, p1, 0x3

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result p1

    .line 2
    invoke-static {v0, p2, p3}, Lcom/google/android/gms/internal/ads/zzicv;->zzc(Lcom/google/android/gms/internal/ads/zzicu;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p2

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zziaw;->zzA(I)I

    move-result p3

    add-int/2addr p3, p2

    add-int/2addr p1, p3

    return p1
.end method

.method final zze()Lcom/google/android/gms/internal/ads/zzicu;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzicv;->zza:Lcom/google/android/gms/internal/ads/zzicu;

    return-object v0
.end method
