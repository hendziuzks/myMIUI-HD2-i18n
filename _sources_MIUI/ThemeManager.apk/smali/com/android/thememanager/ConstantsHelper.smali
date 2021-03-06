.class public Lcom/android/thememanager/ConstantsHelper;
.super Ljava/lang/Object;
.source "ConstantsHelper.java"


# static fields
.field private static minPlatformVersionMap:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static resourceTypeParameterMap:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const-wide/16 v9, 0x1

    const-wide/16 v7, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, "2"

    .line 10
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    sput-object v0, Lcom/android/thememanager/ConstantsHelper;->resourceTypeParameterMap:Landroid/util/LongSparseArray;

    .line 12
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    sput-object v0, Lcom/android/thememanager/ConstantsHelper;->minPlatformVersionMap:Landroid/util/LongSparseArray;

    .line 15
    sget-object v0, Lcom/android/thememanager/ConstantsHelper;->resourceTypeParameterMap:Landroid/util/LongSparseArray;

    const-string v1, "1&filter=1"

    invoke-virtual {v0, v7, v8, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 16
    sget-object v0, Lcom/android/thememanager/ConstantsHelper;->resourceTypeParameterMap:Landroid/util/LongSparseArray;

    const-string v1, "1&filter=1"

    invoke-virtual {v0, v9, v10, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 17
    sget-object v0, Lcom/android/thememanager/ConstantsHelper;->resourceTypeParameterMap:Landroid/util/LongSparseArray;

    const-wide/16 v1, 0x80

    const-string v3, "1&filter=128"

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 18
    sget-object v0, Lcom/android/thememanager/ConstantsHelper;->resourceTypeParameterMap:Landroid/util/LongSparseArray;

    const-wide/16 v1, 0x2

    const-string v3, "3"

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 19
    sget-object v0, Lcom/android/thememanager/ConstantsHelper;->resourceTypeParameterMap:Landroid/util/LongSparseArray;

    const-wide/16 v1, 0x4

    const-string v3, "3"

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 20
    sget-object v0, Lcom/android/thememanager/ConstantsHelper;->resourceTypeParameterMap:Landroid/util/LongSparseArray;

    const-wide/16 v1, 0x8

    const-string v3, "1&filter=8"

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 21
    sget-object v0, Lcom/android/thememanager/ConstantsHelper;->resourceTypeParameterMap:Landroid/util/LongSparseArray;

    const-wide/16 v1, 0x20

    const-string v3, "1&filter=32"

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 22
    sget-object v0, Lcom/android/thememanager/ConstantsHelper;->resourceTypeParameterMap:Landroid/util/LongSparseArray;

    const-wide/16 v1, 0x40

    const-string v3, "2"

    invoke-virtual {v0, v1, v2, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 23
    sget-object v0, Lcom/android/thememanager/ConstantsHelper;->resourceTypeParameterMap:Landroid/util/LongSparseArray;

    const-wide/16 v1, 0x100

    const-string v3, "2"

    invoke-virtual {v0, v1, v2, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 24
    sget-object v0, Lcom/android/thememanager/ConstantsHelper;->resourceTypeParameterMap:Landroid/util/LongSparseArray;

    const-wide/16 v1, 0x200

    const-string v3, "2"

    invoke-virtual {v0, v1, v2, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 25
    sget-object v0, Lcom/android/thememanager/ConstantsHelper;->resourceTypeParameterMap:Landroid/util/LongSparseArray;

    const-wide/16 v1, 0x400

    const-string v3, "2"

    invoke-virtual {v0, v1, v2, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 26
    sget-object v0, Lcom/android/thememanager/ConstantsHelper;->resourceTypeParameterMap:Landroid/util/LongSparseArray;

    const-wide/16 v1, 0x10

    const-string v3, "1&filter=16"

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 27
    sget-object v0, Lcom/android/thememanager/ConstantsHelper;->resourceTypeParameterMap:Landroid/util/LongSparseArray;

    const-wide/16 v1, 0x800

    const-string v3, "1&filter=2048"

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 28
    sget-object v0, Lcom/android/thememanager/ConstantsHelper;->resourceTypeParameterMap:Landroid/util/LongSparseArray;

    const-wide/16 v1, 0x1000

    const-string v3, "1&filter=4096"

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 29
    sget-object v0, Lcom/android/thememanager/ConstantsHelper;->resourceTypeParameterMap:Landroid/util/LongSparseArray;

    const-wide/16 v1, 0x2000

    const-string v3, "1&filter=8192"

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 30
    sget-object v0, Lcom/android/thememanager/ConstantsHelper;->resourceTypeParameterMap:Landroid/util/LongSparseArray;

    const-wide/16 v1, 0x4000

    const-string v3, "1&filter=16384"

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 31
    sget-object v0, Lcom/android/thememanager/ConstantsHelper;->resourceTypeParameterMap:Landroid/util/LongSparseArray;

    const-wide/32 v1, 0x8000

    const-string v3, "1&filter=32768"

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 33
    sget-object v0, Lcom/android/thememanager/ConstantsHelper;->minPlatformVersionMap:Landroid/util/LongSparseArray;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v7, v8, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 34
    sget-object v0, Lcom/android/thememanager/ConstantsHelper;->minPlatformVersionMap:Landroid/util/LongSparseArray;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v9, v10, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 35
    sget-object v0, Lcom/android/thememanager/ConstantsHelper;->minPlatformVersionMap:Landroid/util/LongSparseArray;

    const-wide/16 v1, 0x80

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 36
    sget-object v0, Lcom/android/thememanager/ConstantsHelper;->minPlatformVersionMap:Landroid/util/LongSparseArray;

    const-wide/16 v1, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 37
    sget-object v0, Lcom/android/thememanager/ConstantsHelper;->minPlatformVersionMap:Landroid/util/LongSparseArray;

    const-wide/16 v1, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 38
    sget-object v0, Lcom/android/thememanager/ConstantsHelper;->minPlatformVersionMap:Landroid/util/LongSparseArray;

    const-wide/16 v1, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 39
    sget-object v0, Lcom/android/thememanager/ConstantsHelper;->minPlatformVersionMap:Landroid/util/LongSparseArray;

    const-wide/16 v1, 0x20

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 40
    sget-object v0, Lcom/android/thememanager/ConstantsHelper;->minPlatformVersionMap:Landroid/util/LongSparseArray;

    const-wide/16 v1, 0x40

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 41
    sget-object v0, Lcom/android/thememanager/ConstantsHelper;->minPlatformVersionMap:Landroid/util/LongSparseArray;

    const-wide/16 v1, 0x100

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 42
    sget-object v0, Lcom/android/thememanager/ConstantsHelper;->minPlatformVersionMap:Landroid/util/LongSparseArray;

    const-wide/16 v1, 0x200

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 43
    sget-object v0, Lcom/android/thememanager/ConstantsHelper;->minPlatformVersionMap:Landroid/util/LongSparseArray;

    const-wide/16 v1, 0x400

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 44
    sget-object v0, Lcom/android/thememanager/ConstantsHelper;->minPlatformVersionMap:Landroid/util/LongSparseArray;

    const-wide/16 v1, 0x10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 45
    sget-object v0, Lcom/android/thememanager/ConstantsHelper;->minPlatformVersionMap:Landroid/util/LongSparseArray;

    const-wide/16 v1, 0x800

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 46
    sget-object v0, Lcom/android/thememanager/ConstantsHelper;->minPlatformVersionMap:Landroid/util/LongSparseArray;

    const-wide/16 v1, 0x1000

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 47
    sget-object v0, Lcom/android/thememanager/ConstantsHelper;->minPlatformVersionMap:Landroid/util/LongSparseArray;

    const-wide/16 v1, 0x2000

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 48
    sget-object v0, Lcom/android/thememanager/ConstantsHelper;->minPlatformVersionMap:Landroid/util/LongSparseArray;

    const-wide/16 v1, 0x4000

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 49
    sget-object v0, Lcom/android/thememanager/ConstantsHelper;->minPlatformVersionMap:Landroid/util/LongSparseArray;

    const-wide/32 v1, 0x8000

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 50
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method public static getMinPlatformVersion(J)I
    .locals 1
    .parameter "resourceType"

    .prologue
    .line 57
    sget-object v0, Lcom/android/thememanager/ConstantsHelper;->minPlatformVersionMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p0, p1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getResourceTypeParameter(J)Ljava/lang/String;
    .locals 1
    .parameter "resourceType"

    .prologue
    .line 53
    sget-object v0, Lcom/android/thememanager/ConstantsHelper;->resourceTypeParameterMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p0, p1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
