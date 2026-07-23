.class public final Lcom/google/android/gms/internal/ads/zzzl;
.super Lcom/google/android/gms/internal/ads/zzbl;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# static fields
.field public static final zzJ:Lcom/google/android/gms/internal/ads/zzzl;


# instance fields
.field public final zzK:Z

.field public final zzL:Z

.field public final zzM:Z

.field public final zzN:Z

.field public final zzO:Z

.field public final zzP:Z

.field public final zzQ:Z

.field public final zzR:Z

.field public final zzS:Z

.field public final zzT:Z

.field public final zzU:Z

.field public final zzV:Z

.field public final zzW:Z

.field public final zzX:Z

.field public final zzY:Z

.field private final zzZ:Landroid/util/SparseArray;

.field private final zzaa:Landroid/util/SparseBooleanArray;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzzk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzzk;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzzl;

    .line 2
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzzl;-><init>(Lcom/google/android/gms/internal/ads/zzzk;)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzzl;->zzJ:Lcom/google/android/gms/internal/ads/zzzl;

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfj;->zza:Ljava/lang/String;

    const/16 v0, 0x3e8

    const/16 v1, 0x24

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    const/16 v0, 0x3e9

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    const/16 v0, 0x3ea

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    const/16 v0, 0x3eb

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    const/16 v0, 0x3ec

    .line 8
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    const/16 v0, 0x3ed

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    const/16 v0, 0x3ee

    .line 10
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    const/16 v0, 0x3ef

    .line 11
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    const/16 v0, 0x3f0

    .line 12
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    const/16 v0, 0x3f1

    .line 13
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    const/16 v0, 0x3f2

    .line 14
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    const/16 v0, 0x3f3

    .line 15
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    const/16 v0, 0x3f4

    .line 16
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    const/16 v0, 0x3f5

    .line 17
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    const/16 v0, 0x3f6

    .line 18
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    const/16 v0, 0x3f7

    .line 19
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    const/16 v0, 0x3f8

    .line 20
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    const/16 v0, 0x3f9

    .line 21
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    const/16 v0, 0x3fa

    .line 22
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzzk;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbl;-><init>(Lcom/google/android/gms/internal/ads/zzbk;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzzk;->zzz()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzK:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzL:Z

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzzk;->zzA()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzM:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzN:Z

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzzk;->zzB()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzO:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzP:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzQ:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzR:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzS:Z

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzzk;->zzC()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzT:Z

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzzk;->zzD()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzU:Z

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzzk;->zzE()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzV:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzW:Z

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzzk;->zzF()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzX:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzY:Z

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzzk;->zzG()Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzZ:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzzk;->zzH()Landroid/util/SparseBooleanArray;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzaa:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzzk;[B)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzzl;-><init>(Lcom/google/android/gms/internal/ads/zzzk;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 10

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_7

    .line 1
    const-class v2, Lcom/google/android/gms/internal/ads/zzzl;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzzl;

    .line 2
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzbl;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzK:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/zzzl;->zzK:Z

    if-ne v2, v3, :cond_7

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzM:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/zzzl;->zzM:Z

    if-ne v2, v3, :cond_7

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzO:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/zzzl;->zzO:Z

    if-ne v2, v3, :cond_7

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzT:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/zzzl;->zzT:Z

    if-ne v2, v3, :cond_7

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzU:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/zzzl;->zzU:Z

    if-ne v2, v3, :cond_7

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzV:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/zzzl;->zzV:Z

    if-ne v2, v3, :cond_7

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzX:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/zzzl;->zzX:Z

    if-ne v2, v3, :cond_7

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzaa:Landroid/util/SparseBooleanArray;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzzl;->zzaa:Landroid/util/SparseBooleanArray;

    .line 3
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    .line 4
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    if-ne v5, v4, :cond_7

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_3

    .line 5
    invoke-virtual {v2, v5}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v6

    if-gez v6, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzZ:Landroid/util/SparseArray;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzzl;->zzZ:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 7
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ne v4, v3, :cond_7

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_6

    .line 8
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v5

    if-ltz v5, :cond_7

    .line 9
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    invoke-virtual {p1, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 10
    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v7

    .line 11
    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v8

    if-ne v8, v7, :cond_7

    .line 12
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 13
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/ads/zzyn;

    .line 14
    invoke-interface {v5, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v8}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_2

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    return v0

    :cond_7
    :goto_2
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzbl;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzK:Z

    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x3c1

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzM:Z

    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x3c1

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzO:Z

    add-int/2addr v0, v1

    const v1, 0x1b4d89f

    mul-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzT:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzU:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzV:Z

    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x3c1

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzX:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public final zza(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzaa:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    return p1
.end method

.method public final zzb(ILcom/google/android/gms/internal/ads/zzyn;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzZ:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final zzc(ILcom/google/android/gms/internal/ads/zzyn;)Lcom/google/android/gms/internal/ads/zzzm;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzZ:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzzk;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzzk;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzzk;-><init>(Lcom/google/android/gms/internal/ads/zzzl;[B)V

    return-object v0
.end method

.method final synthetic zze()Landroid/util/SparseArray;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzZ:Landroid/util/SparseArray;

    return-object v0
.end method

.method final synthetic zzf()Landroid/util/SparseBooleanArray;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzaa:Landroid/util/SparseBooleanArray;

    return-object v0
.end method
