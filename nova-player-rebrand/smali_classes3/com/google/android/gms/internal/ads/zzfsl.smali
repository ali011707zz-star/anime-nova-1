.class public final Lcom/google/android/gms/internal/ads/zzfsl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfsx;

.field private final zzb:Landroid/webkit/WebView;

.field private final zzc:Ljava/util/List;

.field private final zzd:Ljava/util/Map;

.field private final zze:Ljava/lang/String;

.field private final zzf:Ljava/lang/String;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzfsm;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzfsx;Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfsm;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfsl;->zzc:Ljava/util/List;

    new-instance p3, Ljava/util/HashMap;

    .line 2
    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfsl;->zzd:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfsl;->zza:Lcom/google/android/gms/internal/ads/zzfsx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfsl;->zzb:Landroid/webkit/WebView;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzfsl;->zzg:Lcom/google/android/gms/internal/ads/zzfsm;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzfsl;->zzf:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzfsl;->zze:Ljava/lang/String;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzfsx;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfsl;
    .locals 10

    if-eqz p3, :cond_0

    const/16 v0, 0x100

    .line 1
    const-string v1, "CustomReferenceData is greater than 256 characters"

    invoke-static {p3, v0, v1}, Lcom/google/android/gms/internal/ads/zzfuh;->zzd(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    new-instance v2, Lcom/google/android/gms/internal/ads/zzfsl;

    const/4 v6, 0x0

    .line 2
    sget-object v9, Lcom/google/android/gms/internal/ads/zzfsm;->zza:Lcom/google/android/gms/internal/ads/zzfsm;

    const/4 v5, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v2 .. v9}, Lcom/google/android/gms/internal/ads/zzfsl;-><init>(Lcom/google/android/gms/internal/ads/zzfsx;Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfsm;)V

    return-object v2
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzfsx;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfsl;
    .locals 9

    const/16 p3, 0x100

    .line 1
    const-string v0, "CustomReferenceData is greater than 256 characters"

    const-string v7, ""

    invoke-static {v7, p3, v0}, Lcom/google/android/gms/internal/ads/zzfuh;->zzd(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfsl;

    const/4 v5, 0x0

    .line 2
    sget-object v8, Lcom/google/android/gms/internal/ads/zzfsm;->zzc:Lcom/google/android/gms/internal/ads/zzfsm;

    const/4 v4, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzfsl;-><init>(Lcom/google/android/gms/internal/ads/zzfsx;Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfsm;)V

    return-object v1
.end method


# virtual methods
.method public final zzc()Lcom/google/android/gms/internal/ads/zzfsx;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsl;->zza:Lcom/google/android/gms/internal/ads/zzfsx;

    return-object v0
.end method

.method public final zzd()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsl;->zzc:Ljava/util/List;

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final zze()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsl;->zzd:Ljava/util/Map;

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final zzf()Landroid/webkit/WebView;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsl;->zzb:Landroid/webkit/WebView;

    return-object v0
.end method

.method public final zzg()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsl;->zzf:Ljava/lang/String;

    return-object v0
.end method

.method public final zzh()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsl;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public final zzi()Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsl;->zzg:Lcom/google/android/gms/internal/ads/zzfsm;

    return-object v0
.end method
